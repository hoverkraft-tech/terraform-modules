# IAM role

Create an IAM role and manage its attached policies

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
| [aws_iam_role.role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assume_role_policy"></a> [assume\_role\_policy](#input\_assume\_role\_policy) | The policy that grants an entity permission to assume the role. | `string` | `"{\n  \"Version\": \"2012-10-17\",\n  \"Statement\": [\n      {\n          \"Action\": \"sts:AssumeRole\",\n          \"Effect\": \"Allow\",\n          \"Sid\": \"\",\n          \"Principal\": {\n              \"Service\": \"ec2.amazonaws.com\"\n          }\n      }\n  ]\n}\n"` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this role | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this role | `string` | `""` | no |
| <a name="input_inline_policies"></a> [inline\_policies](#input\_inline\_policies) | Inline policies to attach to the role | `map(any)` | `{}` | no |
| <a name="input_managed_policies_arns"></a> [managed\_policies\_arns](#input\_managed\_policies\_arns) | List of managed policies ARNs to attach to the role | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this role | `string` | `"myIAMrole"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this role | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | AWS IAM role arn |
| <a name="output_name"></a> [name](#output\_name) | AWS IAM role name |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
