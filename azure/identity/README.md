# Azure Identity Module

This module manages Azure Identity resources.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | >= 3.5.0, <4.0.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.13.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.13.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_user_assigned_identity.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this identity | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this identity | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region where the identity will be created | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this identity | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the identity | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this identity | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_id"></a> [client\_id](#output\_client\_id) | The client ID of the created identity |
| <a name="output_id"></a> [id](#output\_id) | The ID of the created identity |
| <a name="output_principal_id"></a> [principal\_id](#output\_principal\_id) | The principal ID of the created identity |
<!-- END_TF_DOCS -->
