# SCW IAM API key

Create an IAM API key in scaleway
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_scaleway"></a> [scaleway](#requirement\_scaleway) | ~> 2.17.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_scaleway"></a> [scaleway](#provider\_scaleway) | ~> 2.17.0 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.9.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [scaleway_iam_api_key.api_key](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/iam_api_key) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_id"></a> [application\_id](#input\_application\_id) | ID of the application attached to the api key | `string` | `null` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the current deployment | `string` | `""` | no |
| <a name="input_default_project_id"></a> [default\_project\_id](#input\_default\_project\_id) | The default project ID to use with object storage | `string` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the iam api key | `string` | `null` | no |
| <a name="input_expires_at"></a> [expires\_at](#input\_expires\_at) | The date and time of the expiration of the iam api key | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the bucket | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to resources | `map(any)` | `{}` | no |
| <a name="input_user_id"></a> [user\_id](#input\_user\_id) | ID of the user attached to the api key | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_key"></a> [access\_key](#output\_access\_key) | Access key of the api key |
| <a name="output_creation_ip"></a> [creation\_ip](#output\_creation\_ip) | Creation IP of the api key |
| <a name="output_id"></a> [id](#output\_id) | ID of the api key |
| <a name="output_secret_key"></a> [secret\_key](#output\_secret\_key) | Secret key of the api key |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
