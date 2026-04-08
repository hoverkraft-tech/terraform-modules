# Azure Resource Provider Registration

This module manages Azure Resource Provider Registration resources.

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
| [azurerm_resource_provider_registration.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_provider_registration) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this resource provider registration | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this resource provider registration | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the resource provider to register | `string` | `"myresourcegroup"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this resource provider registration | `map(any)` | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
