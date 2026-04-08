# Azure Fabric Capacity

This module manages Azure Fabric Capacity resources.

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
| [azurerm_fabric_capacity.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/fabric_capacity) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_administration_members"></a> [administration\_members](#input\_administration\_members) | An array of administrator user identities. The member must be an Entra user or a service principal | `list(any)` | `[]` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this Fabric Capacity | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this Fabric Capacity | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region where the resource group will be created | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this Fabric Capacity | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group in which to create the private DNS zone | `string` | n/a | yes |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | The name of the SKU to use for the Fabric Capacity. Possible values are F2, F4, F8, F16, F32, F64, F128, F256, F512, F1024, F2048. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this Fabric Capacity | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created Fabric |
<!-- END_TF_DOCS -->
