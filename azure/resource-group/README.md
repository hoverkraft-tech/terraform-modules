# Azure Resource Group

This module manages Azure Resource Group resources.

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
| [azurerm_resource_group.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this resource group | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this resource group | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region where the resource group will be created | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this resource group | `string` | `"myresourcegroup"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this resource group | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created resource group |
| <a name="output_name"></a> [name](#output\_name) | The name of the created resource group |
<!-- END_TF_DOCS -->
