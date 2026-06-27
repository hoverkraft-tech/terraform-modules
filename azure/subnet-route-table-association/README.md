# Azure Subnet Route Table Association Module

This module manages Azure Subnet Route Table Association resources.

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
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.54.0 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.13.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_subnet_route_table_association.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_route_table_association) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this Route Table Association | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this Route Table Association | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this Route Table Association | `string` | `""` | no |
| <a name="input_route_table_id"></a> [route\_table\_id](#input\_route\_table\_id) | The ID of the Route Table which should be associated with the Subnet | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The ID of the Subnet | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this Route Table Association | `map(any)` | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
