variable "name" {
  description = "The name of the route53 zone"
  type        = string
  default     = "example.com"
}

variable "customer" {
  description = "Customer for the current deployment"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment for the current deployment"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Default tags to add to resources"
  type        = map(any)
  default     = {}
}

# module specific variables
variable "aliases" {
  description = "A list of CNAME aliases (alternate domain names), if any, for this distribution."
  type        = list(string)
  default     = []
}

variable "comment" {
  description = "Any comments you want to include about the distribution."
  type        = string
  default     = null
}

variable "custom_error_response" {
  description = "A custom error response element (multiples allowed)."
  type        = list(object({
    error_caching_min_ttl = number
    error_code            = number
    response_code         = number
    response_page_path    = string
  }))
  default     = []
}

variable "default_cache_behavior" {
  description = "A default cache behavior element (required)."
  type        = object({
    allowed_methods        = list(string)
    cached_methods         = list(string)
    compress               = bool
    default_ttl            = number
    forwarded_values       = object({
      cookies = object({
        forward           = string
        whitelisted_names = list(string)
      })
      headers      = list(string)
      query_string = bool
    })
    max_ttl                = number
    min_ttl                = number
    smooth_streaming       = bool
    target_origin_id       = string
    trusted_signers        = list(string)
    viewer_protocol_policy = string
  })
  default     = {
    allowed_methods        = ["GET", "HEAD", "OPTIONS"]
    cached_methods         = ["GET", "HEAD", "OPTIONS"]
    compress               = true
    default_ttl            = 3600
    forwarded_values       = {
      cookies = {
        forward           = "none"
        whitelisted_names = []
      }
      headers      = []
      query_string = false
    }
    max_ttl                = 86400
    min_ttl                = 0
    smooth_streaming       = false
    target_origin_id       = "origin"
    trusted_signers        = []
    viewer_protocol_policy = "allow-all"
  }
}

variable "default_root_object" {
  description = "The object that you want CloudFront to request from your origin (for example, index.html) when a viewer requests the root URL for your distribution (http://www.example.com) instead of an object in your distribution (http://www.example.com/product-description.html). Specifying a default root object avoids exposing the contents of your distribution."
  type        = string
  default     = null
}

variable "enabled" {
  description = "Whether the distribution is enabled to accept end user requests for content."
  type        = bool
  default     = true
}

variable "is_ipv6_enabled" {
  description = "Whether CloudFront responds to IPv6 DNS requests with an IPv6 address for your distribution."
  type        = bool
  default     = true
}

variable "http_version" {
  description = "The maximum HTTP version that you want viewers to use to communicate with CloudFront. The default value for new web distributions is http2. Viewers that don't support HTTP/2 automatically use an earlier version."
  type        = string
  default     = "http2"
}

variable "logging_config" {
  description = "A logging configuration element (required)."
  type        = object({
    bucket        = string
    include_cookies = bool
    prefix        = string
  })
  default     = {
    bucket        = ""
    include_cookies = false
    prefix        = ""
  }
}

variable "ordered_cache_behavior" {
  description = "An ordered cache behavior element (multiples allowed)."
  type        = list(object({
    allowed_methods        = list(string)
    cached_methods         = list(string)
    compress               = bool
    default_ttl            = number
    forwarded_values       = object({
      cookies = object({
        forward           = string
        whitelisted_names = list(string)
      })
      headers      = list(string)
      query_string = bool
    })
    max_ttl                = number
    min_ttl                = number
    path_pattern           = string
    smooth_streaming       = bool
    target_origin_id       = string
    trusted_signers        = list(string)
    viewer_protocol_policy = string
  }))
  default     = []
}

variable "origin" {
  description = "An origin element (multiples allowed)."
  type        = list(object({
    domain_name = string
    origin_id   = string
    http_port   = number
    https_port  = number
    origin_path = string
    custom_origin_config = object({
      http_port                = number
      https_port               = number
      origin_keepalive_timeout = number
      origin_protocol_policy   = string
      origin_read_timeout      = number
      origin_ssl_protocols     = list(string)
    })
    connection_attempts    = number
    connection_timeout     = number
    custom_header          = list(object({
      name  = string
      value = string
    }))
    origin_keepalive_timeout = number
    origin_read_timeout      = number
    origin_shield            = object({
      enabled = bool
      origin_shield_region = string
    })
    s3_origin_config = object({
      origin_access_identity = string
    })
  }))
  default     = []
}

variable "origin_group" {
  description = "An origin group element (multiples allowed)."
  type        = list(object({
    failover_criteria = object({
      status_codes = list(number)
    })
    member = list(object({
      origin_id = string
    }))
    origin_id = string
  }))
  default     = []
}

variable "price_class" {
  description = "The price class for this distribution. One of PriceClass_All, PriceClass_200, PriceClass_100."
  type        = string
  default     = "PriceClass_All"
}

variable "restrictions" {
  description = "A restriction element (required)."
  type        = object({
    geo_restriction = object({
      locations        = list(string)
      restriction_type = string
    })
  })
  default     = {
    geo_restriction = {
      locations        = []
      restriction_type = "none"
    }
  }
}

variable "viewer_certificate" {
  description = "The SSL configuration for this distribution (maximum one)."
  type        = object({
    acm_certificate_arn      = string
    cloudfront_default_certificate = bool
    iam_certificate_id       = string
    minimum_protocol_version = string
    ssl_support_method       = string
  })
  default     = {
    acm_certificate_arn      = ""
    cloudfront_default_certificate = false
    iam_certificate_id       = ""
    minimum_protocol_version = "TLSv1"
    ssl_support_method       = "sni-only"
  }
}

variable "web_acl_id" {
  description = "The Web Application Firewall (WAF) web ACL, if any, to associate with this distribution."
  type        = string
  default     = null
}

variable "retain_on_delete" {
  description = "When destroying this distribution, do not delete the bucket or object, just remove the CloudFront distribution. This is useful if you want to keep your logs bucket."
  type        = bool
  default     = false
}

variable "wait_for_deployment" {
  description = "Whether to wait for the distribution deployment to complete."
  type        = bool
  default     = true
}
