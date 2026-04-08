# Azure Public IP Module

This module manages Azure Public IP resources.

## Usage

```hcl
module "public_ip" {
  source = "./modules/azure/public-ip"

  name                = "pip-fw-hub-001"
  customer            = "beetween"
  environment         = "connectivity"
  location            = "francecentral"
  resource_group_name = "rg-connectivity"

  allocation_method = "Static"
  sku               = "Standard"
}
```

## Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| name | Name of the Public IP | string | - |
| location | Azure region | string | - |
| resource_group_name | Resource group name | string | - |
| allocation_method | Static or Dynamic | string | "Static" |
| sku | Basic or Standard | string | "Standard" |
| sku_tier | Regional or Global | string | "Regional" |
| zones | Availability zones | list(string) | [] |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the Public IP |
| name | The name of the Public IP |
| ip_address | The allocated IP address |

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
| [azurerm_public_ip.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allocation_method"></a> [allocation\_method](#input\_allocation\_method) | Defines the allocation method for this IP address. Possible values are Static or Dynamic | `string` | `"Static"` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this Public IP | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this Public IP | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region where the Public IP will be created | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this Public IP | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the Public IP | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | The SKU of the Public IP. Possible values are Basic and Standard | `string` | `"Standard"` | no |
| <a name="input_sku_tier"></a> [sku\_tier](#input\_sku\_tier) | The SKU Tier of the Public IP. Possible values are Regional and Global | `string` | `"Regional"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this Public IP | `map(any)` | `{}` | no |
| <a name="input_zones"></a> [zones](#input\_zones) | A list of Availability Zones in which this Public IP should be located | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created Public IP |
| <a name="output_ip_address"></a> [ip\_address](#output\_ip\_address) | The IP address value that was allocated |
| <a name="output_name"></a> [name](#output\_name) | The name of the created Public IP |
<!-- END_TF_DOCS -->
