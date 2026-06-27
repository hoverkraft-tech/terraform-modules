# Azure Subnet Module

This module manages Azure Subnet resources.

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
| [azurerm_subnet.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_prefixes"></a> [address\_prefixes](#input\_address\_prefixes) | The address prefixes to use for the subnet. | `list(string)` | <pre>[<br>  "10.10.0.0/16"<br>]</pre> | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer name applied to the created resources | `string` | `""` | no |
| <a name="input_default_outbound_access_enabled"></a> [default\_outbound\_access\_enabled](#input\_default\_outbound\_access\_enabled) | Enable default outbound access to the internet for the subnet | `bool` | `true` | no |
| <a name="input_delegations"></a> [delegations](#input\_delegations) | List of subnet delegations | <pre>list(object({<br>    name         = string<br>    service_name = string<br>    actions      = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment name applied to the created resources | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to the created resources | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group in which to create the subnet | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Extra tags applied to the created resources | `map(any)` | `{}` | no |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | The name of the virtual network to which to attach the subnet | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created subnet |
<!-- END_TF_DOCS -->
