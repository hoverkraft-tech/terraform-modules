# aws cloudfront-distribution

Creates a CloudFront distribution.
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.30.0, < 5.0.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.30.0, < 5.0.0 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.9.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudfront_distribution.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution) | resource |
| [aws_cloudfront_origin_access_identity.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_origin_access_identity) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aliases"></a> [aliases](#input\_aliases) | A list of CNAME aliases (alternate domain names), if any, for this distribution. | `list(string)` | `[]` | no |
| <a name="input_comment"></a> [comment](#input\_comment) | Any comments you want to include about the distribution. | `string` | `null` | no |
| <a name="input_custom_error_response"></a> [custom\_error\_response](#input\_custom\_error\_response) | A custom error response element (multiples allowed). | <pre>list(object({<br>    error_caching_min_ttl = number<br>    error_code            = number<br>    response_code         = number<br>    response_page_path    = string<br>  }))</pre> | `[]` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the current deployment | `string` | `""` | no |
| <a name="input_default_cache_behavior"></a> [default\_cache\_behavior](#input\_default\_cache\_behavior) | A default cache behavior element (required). | `any` | <pre>{<br>  "allowed_methods": [<br>    "GET",<br>    "HEAD",<br>    "OPTIONS"<br>  ],<br>  "cached_methods": [<br>    "GET",<br>    "HEAD",<br>    "OPTIONS"<br>  ],<br>  "compress": true,<br>  "default_ttl": 3600,<br>  "forwarded_values": {<br>    "cookies": {<br>      "forward": "none",<br>      "whitelisted_names": []<br>    },<br>    "headers": [],<br>    "query_string": false<br>  },<br>  "max_ttl": 86400,<br>  "min_ttl": 0,<br>  "smooth_streaming": false,<br>  "target_origin_id": "origin",<br>  "trusted_signers": [],<br>  "viewer_protocol_policy": "allow-all"<br>}</pre> | no |
| <a name="input_default_root_object"></a> [default\_root\_object](#input\_default\_root\_object) | The object that you want CloudFront to request from your origin (for example, index.html) when a viewer requests the root URL for your distribution (http://www.example.com) instead of an object in your distribution (http://www.example.com/product-description.html). Specifying a default root object avoids exposing the contents of your distribution. | `string` | `null` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Whether the distribution is enabled to accept end user requests for content. | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment for the current deployment | `string` | `""` | no |
| <a name="input_http_version"></a> [http\_version](#input\_http\_version) | The maximum HTTP version that you want viewers to use to communicate with CloudFront. The default value for new web distributions is http2. Viewers that don't support HTTP/2 automatically use an earlier version. | `string` | `"http2"` | no |
| <a name="input_is_ipv6_enabled"></a> [is\_ipv6\_enabled](#input\_is\_ipv6\_enabled) | Whether CloudFront responds to IPv6 DNS requests with an IPv6 address for your distribution. | `bool` | `true` | no |
| <a name="input_logging_config"></a> [logging\_config](#input\_logging\_config) | A logging configuration element (required). | `map(any)` | <pre>{<br>  "bucket": "",<br>  "include_cookies": false,<br>  "prefix": ""<br>}</pre> | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the route53 zone | `string` | `"example.com"` | no |
| <a name="input_ordered_cache_behavior"></a> [ordered\_cache\_behavior](#input\_ordered\_cache\_behavior) | An ordered cache behavior element (multiples allowed). | <pre>list(object({<br>    allowed_methods = list(string)<br>    cached_methods  = list(string)<br>    compress        = bool<br>    default_ttl     = number<br>    forwarded_values = object({<br>      cookies = object({<br>        forward           = string<br>        whitelisted_names = list(string)<br>      })<br>      headers      = list(string)<br>      query_string = bool<br>    })<br>    max_ttl                = number<br>    min_ttl                = number<br>    path_pattern           = string<br>    smooth_streaming       = bool<br>    target_origin_id       = string<br>    trusted_signers        = list(string)<br>    viewer_protocol_policy = string<br>  }))</pre> | `[]` | no |
| <a name="input_origin"></a> [origin](#input\_origin) | An origin element (multiples allowed). | `list(any)` | `[]` | no |
| <a name="input_origin_group"></a> [origin\_group](#input\_origin\_group) | An origin group element (multiples allowed). | <pre>list(object({<br>    failover_criteria = object({<br>      status_codes = list(number)<br>    })<br>    member = list(object({<br>      origin_id = string<br>    }))<br>    origin_id = string<br>  }))</pre> | `[]` | no |
| <a name="input_price_class"></a> [price\_class](#input\_price\_class) | The price class for this distribution. One of PriceClass\_All, PriceClass\_200, PriceClass\_100. | `string` | `"PriceClass_All"` | no |
| <a name="input_restrictions"></a> [restrictions](#input\_restrictions) | A restriction element (required). | `map(any)` | <pre>{<br>  "geo_restriction": {<br>    "locations": [],<br>    "restriction_type": "none"<br>  }<br>}</pre> | no |
| <a name="input_retain_on_delete"></a> [retain\_on\_delete](#input\_retain\_on\_delete) | When destroying this distribution, do not delete the bucket or object, just remove the CloudFront distribution. This is useful if you want to keep your logs bucket. | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to resources | `map(any)` | `{}` | no |
| <a name="input_viewer_certificate"></a> [viewer\_certificate](#input\_viewer\_certificate) | The SSL configuration for this distribution (maximum one). | `map(any)` | <pre>{<br>  "acm_certificate_arn": null,<br>  "cloudfront_default_certificate": true,<br>  "iam_certificate_id": null,<br>  "minimum_protocol_version": null,<br>  "ssl_support_method": "sni-only"<br>}</pre> | no |
| <a name="input_wait_for_deployment"></a> [wait\_for\_deployment](#input\_wait\_for\_deployment) | Whether to wait for the distribution deployment to complete. | `bool` | `true` | no |
| <a name="input_web_acl_id"></a> [web\_acl\_id](#input\_web\_acl\_id) | The Web Application Firewall (WAF) web ACL, if any, to associate with this distribution. | `string` | `null` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
