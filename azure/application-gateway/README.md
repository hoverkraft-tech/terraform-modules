# Azure Application Gateway Module

This module manages Azure Application Gateway resources.

## Usage

```hcl
module "public_ip" {
  source = "./modules/azure/public-ip"

  name                = "pip-fw-hub-001"
  customer            = "beetween"
  environment         = "connectivity"
  location            = "francecentral"
  resource_group_name = "rg-connectivity"

  allocation_method = "Static"
  sku               = "Standard"
}
```

## Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| name | Name of the Public IP | string | - |
| location | Azure region | string | - |
| resource_group_name | Resource group name | string | - |
| allocation_method | Static or Dynamic | string | "Static" |
| sku | Basic or Standard | string | "Standard" |
| sku_tier | Regional or Global | string | "Regional" |
| zones | Availability zones | list(string) | [] |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the Public IP |
| name | The name of the Public IP |
| ip_address | The allocated IP address |

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 4.40.0, <5.0.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.13.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.54.0 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.13.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_application_gateway.agw](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_gateway) | resource |
| [azurerm_monitor_diagnostic_setting.agw_diagnostics](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_diagnostic_setting) | resource |
| [azurerm_public_ip.agw_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_user_assigned_identity.agw_identity](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity) | resource |
| [azurerm_web_application_firewall_policy.waf](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/web_application_firewall_policy) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backend_address_pools"></a> [backend\_address\_pools](#input\_backend\_address\_pools) | Backend pools config | <pre>list(object({<br>    name         = string<br>    fqdns        = optional(list(string))<br>    ip_addresses = optional(list(string))<br>  }))</pre> | n/a | yes |
| <a name="input_backend_http_settings"></a> [backend\_http\_settings](#input\_backend\_http\_settings) | List of backend HTTP settings for the Application Gateway | <pre>list(object({<br>    name                                = string<br>    cookie_based_affinity               = string<br>    port                                = number<br>    protocol                            = string<br>    request_timeout                     = optional(number, 30)<br>    pick_host_name_from_backend_address = bool<br>    probe_name                          = optional(string)<br>  }))</pre> | `[]` | no |
| <a name="input_capacity"></a> [capacity](#input\_capacity) | The Capacity of the SKU to use for this Application Gateway | `number` | n/a | yes |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this Public IP | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this Public IP | `string` | `""` | no |
| <a name="input_health_probes"></a> [health\_probes](#input\_health\_probes) | List of health probes for the Application Gateway | <pre>list(object({<br>    name                                      = string<br>    protocol                                  = string<br>    path                                      = string<br>    interval                                  = optional(number, 30)<br>    timeout                                   = optional(number, 30)<br>    unhealthy_threshold                       = optional(number, 3)<br>    pick_host_name_from_backend_http_settings = optional(bool, false)<br>    host                                      = optional(string)<br>    port                                      = optional(number)<br>    match = optional(object({<br>      status_code = list(string)<br>      body        = optional(string)<br>    }))<br>  }))</pre> | `[]` | no |
| <a name="input_http_listeners"></a> [http\_listeners](#input\_http\_listeners) | Listeners config | <pre>list(object({<br>    name                  = string<br>    host_name             = optional(string)<br>    host_names            = optional(list(string))<br>    protocol              = string<br>    ssl_certificate_name  = optional(string)<br>  }))</pre> | n/a | yes |
| <a name="input_identity_id"></a> [identity\_id](#input\_identity\_id) | ID of an existing user-assigned identity to use for the Application Gateway. If not provided, a new identity will be created. | `string` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region where the Public IP will be created | `string` | n/a | yes |
| <a name="input_log_analytics_workspace_id"></a> [log\_analytics\_workspace\_id](#input\_log\_analytics\_workspace\_id) | ID of the Log Analytics Workspace to send diagnostics to. If not provided, diagnostics will not be configured. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this Public IP | `string` | n/a | yes |
| <a name="input_public_ip_allocation_method"></a> [public\_ip\_allocation\_method](#input\_public\_ip\_allocation\_method) | TDefines the allocation method of the IP address. Possible values are Static or Dynamic. | `string` | `"Static"` | no |
| <a name="input_public_ip_zones"></a> [public\_ip\_zones](#input\_public\_ip\_zones) | A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new NAT Gateway to be created | `list(any)` | `null` | no |
| <a name="input_request_routing_rules"></a> [request\_routing\_rules](#input\_request\_routing\_rules) | Routing rules | <pre>list(object({<br>    name                       = string<br>    rule_type                  = string<br>    http_listener_name         = string<br>    backend_address_pool_name  = string<br>    backend_http_settings_name = string<br>    priority                   = number<br>    rewrite_rule_set_name      = optional(string)<br>  }))</pre> | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the Public IP | `string` | n/a | yes |
| <a name="input_rewrite_rule_sets"></a> [rewrite\_rule\_sets](#input\_rewrite\_rule\_sets) | List of rewrite rule sets for the Application Gateway | <pre>list(object({<br>    name = string<br>    rewrite_rules = list(object({<br>      name          = string<br>      rule_sequence = number<br>      conditions = optional(list(object({<br>        variable    = string<br>        pattern     = string<br>        ignore_case = optional(bool, true)<br>        negate      = optional(bool, false)<br>      })), [])<br>      request_header_configurations = optional(list(object({<br>        header_name  = string<br>        header_value = string<br>      })), [])<br>      response_header_configurations = optional(list(object({<br>        header_name  = string<br>        header_value = string<br>      })), [])<br>      url_configuration = optional(object({<br>        path         = optional(string)<br>        query_string = optional(string)<br>        components   = optional(string)<br>        reroute      = optional(bool)<br>      }))<br>    }))<br>  }))</pre> | `[]` | no |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | The Name of the SKU to use for this Application Gateway. Possible values are Basic, Standard\_Small, Standard\_Medium, Standard\_Large, Standard\_v2, WAF\_Large, WAF\_Medium and WAF\_v2 | `string` | n/a | yes |
| <a name="input_sku_tier"></a> [sku\_tier](#input\_sku\_tier) | he Tier of the SKU to use for this Application Gateway. Possible values are Basic, Standard\_v2, and WAF\_v2 | `string` | n/a | yes |
| <a name="input_ssl_certificates"></a> [ssl\_certificates](#input\_ssl\_certificates) | SSL certificats | <pre>list(object({<br>    name                 = string<br>    key_vault_secret_id  = string<br>  }))</pre> | `[]` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The ID of the Subnet which the Application Gateway should be connected to | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this Public IP | `map(any)` | `{}` | no |
| <a name="input_waf_policy"></a> [waf\_policy](#input\_waf\_policy) | WAF policy configuration for the Application Gateway. Only applicable when sku\_tier is WAF or WAF\_v2. Uses azurerm\_web\_application\_firewall\_policy resource. | <pre>object({<br>    enabled                  = bool<br>    firewall_mode            = string # Detection or Prevention<br>    rule_set_type            = optional(string, "OWASP")<br>    rule_set_version         = string # 3.2, 3.1, 3.0, 2.2.9<br>    file_upload_limit_mb     = optional(number, 100)<br>    request_body_check       = optional(bool, true)<br>    max_request_body_size_kb = optional(number, 128)<br>    disabled_rule_group = optional(list(object({<br>      rule_group_name = string<br>      rules           = optional(list(number))<br>    })), [])<br>    exclusion = optional(list(object({<br>      match_variable          = string<br>      selector_match_operator = optional(string)<br>      selector                = optional(string)<br>    })), [])<br>  })</pre> | `null` | no |
| <a name="input_zones"></a> [zones](#input\_zones) | A list of Availability Zones in which this Public IP should be located | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created Application Gateway |
<!-- END_TF_DOCS -->
