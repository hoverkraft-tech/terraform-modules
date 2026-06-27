# Azure Storage Account

This module manages Azure Storage Account resources.

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
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.42.0 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.13.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_private_endpoint.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) | resource |
| [azurerm_role_assignment.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_storage_account.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_container.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_kind"></a> [account\_kind](#input\_account\_kind) | Type of storage account | `string` | `"StorageV2"` | no |
| <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type) | Defines the type of replication to use for this storage account | `string` | `"GRS"` | no |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | Defines the Tier to use for this storage account | `string` | `"Standard"` | no |
| <a name="input_allow_nested_items_to_be_public"></a> [allow\_nested\_items\_to\_be\_public](#input\_allow\_nested\_items\_to\_be\_public) | Allow nested items to be publicly accessible | `bool` | `false` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this storage account | `string` | `""` | no |
| <a name="input_default_to_oauth_authentication"></a> [default\_to\_oauth\_authentication](#input\_default\_to\_oauth\_authentication) | Whether to default to OAuth authentication for the storage account | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this storage account | `string` | `""` | no |
| <a name="input_hns_enabled"></a> [hns\_enabled](#input\_hns\_enabled) | Whether Hierarchical Namespace is enabled for the storage account | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region where the storage account will be created | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this storage account | `string` | `"mystorageaccount"` | no |
| <a name="input_network_rules"></a> [network\_rules](#input\_network\_rules) | Network rules to apply to the storage account | `list(any)` | `[]` | no |
| <a name="input_private_dns_zone_id"></a> [private\_dns\_zone\_id](#input\_private\_dns\_zone\_id) | The ID of the private DNS zone for the Key Vault private endpoint | `string` | n/a | yes |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Whether public network access is enabled for the storage account | `bool` | `false` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Azure resource group name | `string` | n/a | yes |
| <a name="input_role_assignments"></a> [role\_assignments](#input\_role\_assignments) | Map of role assignments to create on the storage account | <pre>list(object({<br>    role_definition_name = string<br>    principal_id         = string<br>    description          = optional(string)<br>  }))</pre> | `[]` | no |
| <a name="input_storage_containers"></a> [storage\_containers](#input\_storage\_containers) | Map of storage containers to create in the storage account | <pre>list(object({<br>    name                  = string<br>    container_access_type = string<br>  }))</pre> | `[]` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The ID of the subnet where the private endpoint will be created | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this storage account | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created storage account |
| <a name="output_name"></a> [name](#output\_name) | The name of the created storage account |
| <a name="output_primary_access_key"></a> [primary\_access\_key](#output\_primary\_access\_key) | The primary access key for the storage account |
<!-- END_TF_DOCS -->
