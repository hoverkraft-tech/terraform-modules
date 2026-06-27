# Azure Management Group

This module manages Azure Management Group resources.

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
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.44.0 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.13.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_management_group.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this management group | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this management group | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this management group | `string` | `"myresourcegroup"` | no |
| <a name="input_parent_management_group_id"></a> [parent\_management\_group\_id](#input\_parent\_management\_group\_id) | The ID of the parent management group under which this management group will be created | `string` | `null` | no |
| <a name="input_subscription_ids"></a> [subscription\_ids](#input\_subscription\_ids) | List of subscription IDs to associate with this management group | `set(string)` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this management group | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created management group |
<!-- END_TF_DOCS -->
