# Azure Virtual Network

This module manages Azure Virtual Network resources.

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
| [azurerm_role_assignment.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_virtual_network.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_space"></a> [address\_space](#input\_address\_space) | The address space of the Virtual Network in CIDR notation | `list(string)` | <pre>[<br>  "10.0.0.0/8"<br>]</pre> | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this virtual network | `string` | `""` | no |
| <a name="input_dns_servers"></a> [dns\_servers](#input\_dns\_servers) | A list of DNS server IP addresses assigned to the Virtual Network | `any` | `null` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this virtual network | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region where the resource group will be created | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this virtual network | `string` | `"myresourcegroup"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the Virtual Network | `string` | n/a | yes |
| <a name="input_role_assignments"></a> [role\_assignments](#input\_role\_assignments) | List of role assignments for the Key Vault. Each assignment should include role\_definition\_name and principal\_id. | <pre>list(object({<br>    role_definition_name = string<br>    principal_id         = string<br>    description          = optional(string)<br>  }))</pre> | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this virtual network | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created virtual network |
| <a name="output_name"></a> [name](#output\_name) | The name of the created cirtual network |
<!-- END_TF_DOCS -->
