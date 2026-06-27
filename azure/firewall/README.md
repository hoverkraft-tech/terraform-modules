# Azure Firewall Module

This module manages Azure Firewall resources.

## Usage

```hcl
module "firewall" {
  source = "./modules/azure/firewall"

  name                = "fw-hub-francecentral-001"
  customer            = "beetween"
  environment         = "connectivity"
  location            = "francecentral"
  resource_group_name = "rg-connectivity"

  subnet_id            = azurerm_subnet.firewall.id
  public_ip_address_id = azurerm_public_ip.firewall.id

  sku_name = "AZFW_VNet"
  sku_tier = "Basic"  # Use "Standard" or "Premium" for production
}
```

## Requirements

- The subnet must be named `AzureFirewallSubnet` (Azure requirement)
- A Public IP is required for the firewall

## Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| name | Name of the Azure Firewall | string | - |
| location | Azure region | string | - |
| resource_group_name | Resource group name | string | - |
| subnet_id | ID of the AzureFirewallSubnet | string | - |
| public_ip_address_id | ID of the Public IP | string | null |
| sku_name | SKU name (AZFW_Hub or AZFW_VNet) | string | "AZFW_VNet" |
| sku_tier | SKU tier (Basic, Standard, Premium) | string | "Basic" |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the Firewall |
| name | The name of the Firewall |
| private_ip_address | The private IP address for routing |
| public_ip_address | The public IP address ID |

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
| [azurerm_firewall.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/firewall) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this Azure Firewall | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this Azure Firewall | `string` | `""` | no |
| <a name="input_firewall_policy_id"></a> [firewall\_policy\_id](#input\_firewall\_policy\_id) | The ID of the Firewall Policy applied to this Firewall | `string` | `null` | no |
| <a name="input_ip_configuration_name"></a> [ip\_configuration\_name](#input\_ip\_configuration\_name) | Name of the IP configuration | `string` | `"configuration"` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region where the Firewall will be created | `string` | n/a | yes |
| <a name="input_management_ip_id"></a> [management\_ip\_id](#input\_management\_ip\_id) | n/a | `string` | n/a | yes |
| <a name="input_management_ip_name"></a> [management\_ip\_name](#input\_management\_ip\_name) | n/a | `string` | `"management"` | no |
| <a name="input_management_ip_subnet"></a> [management\_ip\_subnet](#input\_management\_ip\_subnet) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this Azure Firewall | `string` | n/a | yes |
| <a name="input_public_ip_address_id"></a> [public\_ip\_address\_id](#input\_public\_ip\_address\_id) | The ID of the Public IP address associated with the Firewall | `string` | `null` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the Firewall | `string` | n/a | yes |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | SKU name of the Firewall. Possible values are AZFW\_Hub and AZFW\_VNet | `string` | `"AZFW_VNet"` | no |
| <a name="input_sku_tier"></a> [sku\_tier](#input\_sku\_tier) | SKU tier of the Firewall. Possible values are Premium, Standard, and Basic | `string` | `"Basic"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The ID of the AzureFirewallSubnet where the Firewall will be deployed | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this Azure Firewall | `map(any)` | `{}` | no |
| <a name="input_zones"></a> [zones](#input\_zones) | Availability zones for the Firewall | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created Azure Firewall |
| <a name="output_name"></a> [name](#output\_name) | The name of the created Azure Firewall |
| <a name="output_private_ip_address"></a> [private\_ip\_address](#output\_private\_ip\_address) | The private IP address of the Azure Firewall |
| <a name="output_public_ip_address"></a> [public\_ip\_address](#output\_public\_ip\_address) | The public IP address associated with the Firewall (if any) |
<!-- END_TF_DOCS -->
