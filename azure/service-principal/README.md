# Azure Service Principal

This module manages Azure Service Principal resources.

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
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | 3.7.0 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.13.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_application.application](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application) | resource |
| [azuread_service_principal.sp](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal) | resource |
| [azuread_service_principal_password.sp_password](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |
| [azuread_client_config.current](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this service principal | `string` | `""` | no |
| <a name="input_description"></a> [description](#input\_description) | A description of the service principal | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this service principal | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this service principal | `string` | `""` | no |
| <a name="input_password_end_date"></a> [password\_end\_date](#input\_password\_end\_date) | The end date until which the password is valid, formatted as an RFC3339 date string (e.g. 2018-01-01T01:02:03Z) | `string` | `null` | no |
| <a name="input_password_end_date_relative"></a> [password\_end\_date\_relative](#input\_password\_end\_date\_relative) | A relative duration for which the password is valid until, for example 240h (10 days) or 2400h30m | `string` | `null` | no |
| <a name="input_password_start_date"></a> [password\_start\_date](#input\_password\_start\_date) | The start date from which the password is valid, formatted as an RFC3339 date string (e.g. 2018-01-01T01:02:03Z) | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this service principal | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_id"></a> [client\_id](#output\_client\_id) | The Client ID of the created service principal |
| <a name="output_client_secret"></a> [client\_secret](#output\_client\_secret) | The password for this service principal |
| <a name="output_id"></a> [id](#output\_id) | The ID of the created service principal |
| <a name="output_name"></a> [name](#output\_name) | The name of the created service principal |
| <a name="output_object_id"></a> [object\_id](#output\_object\_id) | The Object ID of the created service principal |
<!-- END_TF_DOCS -->
