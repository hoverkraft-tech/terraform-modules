# Azure Application

This module manages Azure Application resources.

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
| [azuread_application.main](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |
| [azuread_client_config.current](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this application | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this application | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this application | `string` | `"myapplication"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this application | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_id"></a> [client\_id](#output\_client\_id) | The client ID of the created application |
| <a name="output_id"></a> [id](#output\_id) | The ID of the created application |
| <a name="output_object_id"></a> [object\_id](#output\_object\_id) | The object ID of the created application |
<!-- END_TF_DOCS -->
