# IAM service linked role

Create an IAM service linked role and manage its attached policies

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.30.0, < 5.0.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.30.0, < 5.0.0 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.9.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_service_linked_role.role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_service_linked_role) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_service_name"></a> [aws\_service\_name](#input\_aws\_service\_name) | The AWS service to which this role is attached | `string` | n/a | yes |
| <a name="input_custom_suffix"></a> [custom\_suffix](#input\_custom\_suffix) | Additional string appended to the role name. Not all AWS services support custom suffixes. | `string` | `null` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this role | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this role | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this role | `string` | `"myIAMrole"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this role | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | AWS IAM role arn |
| <a name="output_name"></a> [name](#output\_name) | AWS IAM role name |
| <a name="output_unique_id"></a> [unique\_id](#output\_unique\_id) | AWS IAM role unique ID |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
