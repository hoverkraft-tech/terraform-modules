# SCW IAM policy

Create an IAM policy in scaleway
<!-- BEGIN_TF_DOCS -->
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
| [scaleway_iam_policy.policy](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/iam_policy) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_id"></a> [application\_id](#input\_application\_id) | The ID of the application the policy is associated with | `string` | `null` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the current deployment | `string` | `""` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the iam application | `string` | `null` | no |
| <a name="input_group_id"></a> [group\_id](#input\_group\_id) | The ID of the group the policy is associated with | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the bucket | `string` | n/a | yes |
| <a name="input_no_principal"></a> [no\_principal](#input\_no\_principal) | If true, the policy will not be associated with any principal | `bool` | `null` | no |
| <a name="input_organization_id"></a> [organization\_id](#input\_organization\_id) | The ID of the organization the application is associated with | `string` | `null` | no |
| <a name="input_rules"></a> [rules](#input\_rules) | The list of rules to apply to the policy | `any` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to resources | `map(any)` | `{}` | no |
| <a name="input_user_id"></a> [user\_id](#input\_user\_id) | The ID of the user the policy is associated with | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the application |
<!-- END_TF_DOCS -->
