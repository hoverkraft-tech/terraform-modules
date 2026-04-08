# Azure Container Registry Module

This module manages Azure Container Registry resources.

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
| [azurerm_container_registry.acr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry) | resource |
| [azurerm_role_assignment.acr_role_assignments](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_user_assigned_identity.acr_identity](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_enabled"></a> [admin\_enabled](#input\_admin\_enabled) | Specifies whether the admin user is enabled for the container registry | `bool` | `false` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this virtual network | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this virtual network | `string` | `""` | no |
| <a name="input_identity_name"></a> [identity\_name](#input\_identity\_name) | Name of the user-assigned managed identity for the container registry | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Azure region where the resource group will be created | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this virtual network | `string` | `"myresourcegroup"` | no |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Whether public network access is allowed for the container registry | `bool` | `true` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the container registry | `string` | n/a | yes |
| <a name="input_retention_policy_in_days"></a> [retention\_policy\_in\_days](#input\_retention\_policy\_in\_days) | The number of days to retain an untagged manifest after which it gets purged. Only available for Premium SKU | `number` | `null` | no |
| <a name="input_role_assignments"></a> [role\_assignments](#input\_role\_assignments) | List of role assignments for the Key Vault. Each assignment should include role\_definition\_name and principal\_id. | <pre>list(object({<br>    role_definition_name = string<br>    principal_id         = string<br>    description          = optional(string)<br>  }))</pre> | `[]` | no |
| <a name="input_sku"></a> [sku](#input\_sku) | The SKU name of the container registry. Possible values are Basic, Standard and Premium | `string` | `"Basic"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this virtual network | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created container registry |
<!-- END_TF_DOCS -->
