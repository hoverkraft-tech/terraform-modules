# Azure Firewall Policy Module

This module manages Azure Firewall Policy resources.

## Usage

```hcl
module "firewall_policy" {
  source = "./modules/azure/firewall-policy"

  name                = "fwpol-hub-001"
  customer            = "beetween"
  environment         = "connectivity"
  location            = "francecentral"
  resource_group_name = "rg-connectivity"

  sku = "Basic"
}
```

## Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| name | Name of the Firewall Policy | string | - |
| location | Azure region | string | - |
| resource_group_name | Resource group name | string | - |
| sku | Basic, Standard or Premium | string | "Basic" |
| threat_intelligence_mode | Alert, Deny or Off | string | "Alert" |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the Firewall Policy |
| name | The name of the Firewall Policy |

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
| [azurerm_firewall_policy.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/firewall_policy) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_base_policy_id"></a> [base\_policy\_id](#input\_base\_policy\_id) | The ID of the base Firewall Policy | `string` | `null` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this Firewall Policy | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this Firewall Policy | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region where the Firewall Policy will be created | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this Firewall Policy | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the Firewall Policy | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | The SKU Tier of the Firewall Policy. Possible values are Standard, Premium and Basic | `string` | `"Basic"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this Firewall Policy | `map(any)` | `{}` | no |
| <a name="input_threat_intelligence_mode"></a> [threat\_intelligence\_mode](#input\_threat\_intelligence\_mode) | The operation mode for Threat Intelligence. Possible values are Alert, Deny and Off | `string` | `"Alert"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created Firewall Policy |
| <a name="output_name"></a> [name](#output\_name) | The name of the created Firewall Policy |
<!-- END_TF_DOCS -->
