resource "aws_cloudfront_origin_access_identity" "main" {
  comment = "Origin Access Identity for CloudFront distribution (${var.name})"
}

#trivy:ignore:AVD-AWS-0010 up to the user
#trivy:ignore:AVD-AWS-0012 up to the user
resource "aws_cloudfront_distribution" "main" {
  #checkov:skip=CKV_AWS_86:invalid - access loging must be left to the end user choice
  #checkov:skip=CKV_AWS_34:invalid - we prefer to redirect to https for user experience
  #checkov:skip=CKV_AWS_174:invalid - this is up to the end user of the module
  #checkov:skip=CKV_AWS_310:invalid - origin failover must be left to the end user choice
  #checkov:skip=CKV2_AWS_32:TODO - add support for response headers policy
  #checkov:skip=CKV2_AWS_42:invalid - this is handled in a separate module
  #checkov:skip=CKV2_AWS_46:invalid - for the module use case
  #checkov:skip=CKV2_AWS_47:TODO - add support for WAF

  aliases             = var.aliases
  comment             = var.comment
  default_root_object = var.default_root_object
  enabled             = var.enabled
  http_version        = var.http_version
  is_ipv6_enabled     = var.is_ipv6_enabled
  price_class         = var.price_class
  retain_on_delete    = var.retain_on_delete
  tags                = local.interpolated_tags
  wait_for_deployment = var.wait_for_deployment
  web_acl_id          = var.web_acl_id

  dynamic "custom_error_response" {
    for_each = var.custom_error_response
    content {
      error_caching_min_ttl = custom_error_response.value.error_caching_min_ttl
      error_code            = custom_error_response.value.error_code
      response_code         = custom_error_response.value.response_code
      response_page_path    = custom_error_response.value.response_page_path
    }
  }

  dynamic "default_cache_behavior" {
    for_each = [var.default_cache_behavior]
    content {
      allowed_methods            = try(default_cache_behavior.value.allowed_methods, ["GET", "POST", "HEAD", "OPTIONS"])
      cached_methods             = try(default_cache_behavior.value.cached_methods, ["GET", "POST", "HEAD", "OPTIONS"])
      cache_policy_id            = try(default_cache_behavior.value.cache_policy_id, null)
      compress                   = try(default_cache_behavior.value.compress, false)
      default_ttl                = try(default_cache_behavior.value.default_ttl, null)
      max_ttl                    = try(default_cache_behavior.value.max_ttl, null)
      min_ttl                    = try(default_cache_behavior.value.min_ttl, null)
      origin_request_policy_id   = try(default_cache_behavior.value.origin_request_policy_id, null)
      response_headers_policy_id = try(default_cache_behavior.value.response_headers_policy_id, null)
      target_origin_id           = try(default_cache_behavior.value.target_origin_id)
      viewer_protocol_policy     = try(default_cache_behavior.value.viewer_protocol_policy, "redirect-to-https")
      # TODO: this is deprecated and we should check if origin_request_policy_id or cache_policy_id is set
      dynamic "forwarded_values" {
        for_each = try(default_cache_behavior.value.forwarded_values, null) != null ? [default_cache_behavior.value.forwarded_values] : []
        content {
          dynamic "cookies" {
            for_each = [try(forwarded_values.value.cookies, { forward = "none" })]
            content {
              forward           = try(cookies.value.forward, null)
              whitelisted_names = try(cookies.value.whitelisted_names, null)
            }
          }
          headers      = try(forwarded_values.value.headers, null)
          query_string = try(forwarded_values.value.query_string, false)
        }
      }
    }
  }

  dynamic "logging_config" {
    for_each = [var.logging_config]
    content {
      bucket          = try(logging_config.value.bucket, null)
      include_cookies = try(logging_config.value.include_cookies, null)
      prefix          = try(logging_config.value.prefix, null)
    }
  }

  dynamic "ordered_cache_behavior" {
    for_each = var.ordered_cache_behavior
    content {
      allowed_methods = ordered_cache_behavior.value.allowed_methods
      cached_methods  = ordered_cache_behavior.value.cached_methods
      compress        = ordered_cache_behavior.value.compress
      default_ttl     = ordered_cache_behavior.value.default_ttl
      dynamic "forwarded_values" {
        for_each = ordered_cache_behavior.value.forwarded_values
        content {
          dynamic "cookies" {
            for_each = forwarded_values.value.cookies
            content {
              forward           = cookies.value.forward
              whitelisted_names = cookies.value.whitelisted_names
            }
          }
          headers      = forwarded_values.value.headers
          query_string = forwarded_values.value.query_string
        }
      }
      max_ttl                = ordered_cache_behavior.value.max_ttl
      min_ttl                = ordered_cache_behavior.value.min_ttl
      path_pattern           = ordered_cache_behavior.value.path_pattern
      target_origin_id       = ordered_cache_behavior.value.target_origin_id
      viewer_protocol_policy = ordered_cache_behavior.value.viewer_protocol_policy
    }
  }

  dynamic "origin" {
    for_each = var.origin
    content {
      domain_name = try(origin.value.domain_name, null)
      origin_id   = try(origin.value.origin_id, null)
      origin_path = try(origin.value.origin_path, null)

      dynamic "custom_header" {
        for_each = length(origin.value.custom_header) > 0 ? flatten([origin.value.custom_header]) : []
        content {
          name  = try(custom_header.value.name, null)
          value = try(custom_header.value.value, null)
        }
      }

      dynamic "custom_origin_config" {
        for_each = try([origin.value.custom_origin_config], [])
        content {
          http_port                = try(custom_origin_config.value.http_port, 80)
          https_port               = try(custom_origin_config.value.https_port, 443)
          origin_keepalive_timeout = try(custom_origin_config.value.origin_keepalive_timeout, 5)
          origin_protocol_policy   = try(custom_origin_config.value.origin_protocol_policy, "match-viewer")
          origin_read_timeout      = try(custom_origin_config.value.origin_read_timeout, 30)
          origin_ssl_protocols     = try(custom_origin_config.value.origin_ssl_protocols, ["TLSv1.2"])
        }
      }
      dynamic "s3_origin_config" {
        for_each = try([origin.value.s3_origin_config], [])
        content {
          origin_access_identity = aws_cloudfront_origin_access_identity.main.cloudfront_access_identity_path
        }
      }
    }
  }

  dynamic "origin_group" {
    for_each = var.origin_group
    content {
      origin_id = origin_group.value.origin_id
      failover_criteria {
        status_codes = origin_group.value.failover_criteria.status_codes
      }
      member {
        origin_id = origin_group.value.member.origin_id
      }
    }
  }

  dynamic "restrictions" {
    for_each = [var.restrictions]
    content {
      geo_restriction {
        locations        = try(restrictions.value.geo_restriction.locations, null)
        restriction_type = try(restrictions.value.geo_restriction.restriction_type, null)
      }
    }
  }

  dynamic "viewer_certificate" {
    for_each = [var.viewer_certificate]
    content {
      acm_certificate_arn            = try(viewer_certificate.value.acm_certificate_arn, null)
      cloudfront_default_certificate = try(viewer_certificate.value.cloudfront_default_certificate, false)
      iam_certificate_id             = try(viewer_certificate.value.iam_certificate_id, null)
      minimum_protocol_version       = try(viewer_certificate.value.minimum_protocol_version, "TLSv1.2_2019")
      ssl_support_method             = try(viewer_certificate.value.ssl_support_method, "sni-only")
    }
  }

}
