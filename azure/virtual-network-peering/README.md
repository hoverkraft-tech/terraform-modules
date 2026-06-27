# Azure Virtual Network Peering Module

This module manages Azure Virtual Network Peering resources.

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
| [azurerm_virtual_network_peering.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_forwarded_traffic"></a> [allow\_forwarded\_traffic](#input\_allow\_forwarded\_traffic) | Controls if forwarded traffic from VMs in the remote virtual network is allowed. | `bool` | `false` | no |
| <a name="input_allow_gateway_transit"></a> [allow\_gateway\_transit](#input\_allow\_gateway\_transit) | Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network. | `bool` | `false` | no |
| <a name="input_allow_virtual_network_access"></a> [allow\_virtual\_network\_access](#input\_allow\_virtual\_network\_access) | Controls if the traffic from the local virtual network can reach the remote virtual network | `bool` | `true` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this virtual network | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this virtual network | `string` | `""` | no |
| <a name="input_local_subnet_names"></a> [local\_subnet\_names](#input\_local\_subnet\_names) | A list of local Subnet names that are Subnet peered with remote Virtual Network. | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this virtual network | `string` | n/a | yes |
| <a name="input_only_ipv6_peering_enabled"></a> [only\_ipv6\_peering\_enabled](#input\_only\_ipv6\_peering\_enabled) | The name of the resource group in which to create the Virtual Network Peering | `bool` | `false` | no |
| <a name="input_peer_complete_virtual_networks_enabled"></a> [peer\_complete\_virtual\_networks\_enabled](#input\_peer\_complete\_virtual\_networks\_enabled) | Specifies whether complete Virtual Network address space is peered. Changing this forces a new resource to be created. | `bool` | `true` | no |
| <a name="input_remote_subnet_names"></a> [remote\_subnet\_names](#input\_remote\_subnet\_names) | A list of remote Subnet names from remote Virtual Network that are Subnet peered | `list(string)` | `[]` | no |
| <a name="input_remote_virtual_network_id"></a> [remote\_virtual\_network\_id](#input\_remote\_virtual\_network\_id) | The ID of the remote virtual network. Changing this forces a new resource to be created | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the Virtual Network Peering. Changing this forces a new resource to be created | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this virtual network | `map(any)` | `{}` | no |
| <a name="input_use_remote_gateways"></a> [use\_remote\_gateways](#input\_use\_remote\_gateways) | Controls if remote gateways can be used on the local virtual network. | `bool` | `false` | no |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | The name of the virtual network. Changing this forces a new resource to be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created virtual network peering |
<!-- END_TF_DOCS -->
