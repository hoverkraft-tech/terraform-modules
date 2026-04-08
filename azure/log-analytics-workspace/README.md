# Azure Log Analytics Workspace Module

This module manages Azure Log Analytics Workspace resources.

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
| [azurerm_log_analytics_workspace.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this AI Foundry Hub | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this AI Foundry Hub | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region where the resource group will be created | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this AI Foundry Hub | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the Log Analytics Workspace | `string` | n/a | yes |
| <a name="input_retention_in_days"></a> [retention\_in\_days](#input\_retention\_in\_days) | The retention period for the Log Analytics Workspace in days | `number` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | The SKU of the Log Analytics Workspace | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this AI Foundry Hub | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created Log Analytics Workspace |
<!-- END_TF_DOCS -->
