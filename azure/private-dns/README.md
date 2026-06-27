# Azure Private DNS Module

This module manages Azure Private DNS resources.

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
| [azurerm_private_dns_zone.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone_virtual_network_link.link](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_customer"></a> [customer](#input\_customer) | Customer name applied to the created resources | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment name applied to the created resources | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to the created resources | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group in which to create the private DNS zone | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Extra tags applied to the created resources | `map(any)` | `{}` | no |
| <a name="input_virtual_network_links"></a> [virtual\_network\_links](#input\_virtual\_network\_links) | List of Vnet to link to | <pre>list(object({<br>    name                 = string<br>    virtual_network_id   = string<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created private DNS zone |
| <a name="output_name"></a> [name](#output\_name) | The name of the created private DNS zone |
<!-- END_TF_DOCS -->
