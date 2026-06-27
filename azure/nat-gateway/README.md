# Azure NAT Gateway Module

This module manages Azure NAT Gateway resources.

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
| [azurerm_nat_gateway.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/nat_gateway) | resource |
| [azurerm_nat_gateway_public_ip_association.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/nat_gateway_public_ip_association) | resource |
| [azurerm_public_ip.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_subnet_nat_gateway_association.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_nat_gateway_association) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this Route Table | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this Route Table | `string` | `""` | no |
| <a name="input_idle_timeout_in_minutes"></a> [idle\_timeout\_in\_minutes](#input\_idle\_timeout\_in\_minutes) | The idle timeout which should be used in minutes | `number` | `4` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region where the NAT Gateway will be created | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this Route Table | `string` | n/a | yes |
| <a name="input_public_ip_allocation_method"></a> [public\_ip\_allocation\_method](#input\_public\_ip\_allocation\_method) | TDefines the allocation method of the IP address. Possible values are Static or Dynamic. | `string` | `"Static"` | no |
| <a name="input_public_ip_sku"></a> [public\_ip\_sku](#input\_public\_ip\_sku) | The SKU of the associated Public IP. Possible values are Basic and Standard | `string` | `"Standard"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the NAT Gateway | `string` | n/a | yes |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | The SKU which should be used | `string` | `"Standard"` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of subnet ID to which the NAT gateway will be attached | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this Route Table | `map(any)` | `{}` | no |
| <a name="input_zones"></a> [zones](#input\_zones) | A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new NAT Gateway to be created | `list(any)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created NAT Gateway |
| <a name="output_public_ip_address"></a> [public\_ip\_address](#output\_public\_ip\_address) | The Public IP address value that was allocated |
| <a name="output_public_ip_id"></a> [public\_ip\_id](#output\_public\_ip\_id) | The ID of the created Public IP |
<!-- END_TF_DOCS -->
