# Azure Role Module

This module manages Azure Role resources.

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
| [azurerm_role_definition.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_definition) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_actions"></a> [actions](#input\_actions) | One or more Allowed Actions | `list(any)` | `[]` | no |
| <a name="input_assignable_scopes"></a> [assignable\_scopes](#input\_assignable\_scopes) | One or more Disallowed Data Actions | `list(any)` | `[]` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this role | `string` | `""` | no |
| <a name="input_data_actions"></a> [data\_actions](#input\_data\_actions) | One or more Allowed Data Actions | `list(any)` | `[]` | no |
| <a name="input_description"></a> [description](#input\_description) | The description applied to this role | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this role | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this role | `string` | n/a | yes |
| <a name="input_not_actions"></a> [not\_actions](#input\_not\_actions) | One or more Allowed Data Actions | `list(any)` | `[]` | no |
| <a name="input_not_data_actions"></a> [not\_data\_actions](#input\_not\_data\_actions) | One or more Disallowed Actions | `list(any)` | `[]` | no |
| <a name="input_scope"></a> [scope](#input\_scope) | The scope applied to this role | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this role | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created role |
| <a name="output_role_definition_id"></a> [role\_definition\_id](#output\_role\_definition\_id) | The Role Definition ID of the created role |
<!-- END_TF_DOCS -->
