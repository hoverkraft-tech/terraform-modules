# OVH user

Create an OVH user

## parameters
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_openstack"></a> [openstack](#requirement\_openstack) | ~> 1.49.0 |
| <a name="requirement_ovh"></a> [ovh](#requirement\_ovh) | ~> 0.24.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_ovh"></a> [ovh](#provider\_ovh) | ~> 0.24.0 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.9.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [ovh_cloud_project_user.user](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_user) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_project_id"></a> [cloud\_project\_id](#input\_cloud\_project\_id) | OVH service name | `string` | n/a | yes |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this instance | `string` | `""` | no |
| <a name="input_description"></a> [description](#input\_description) | OVH user description | `string` | `"OVH user"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this instance | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this instance | `string` | `""` | no |
| <a name="input_ovh_role_names"></a> [ovh\_role\_names](#input\_ovh\_role\_names) | OVH user role names | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this instance | `map(string)` | <pre>{<br>  "ManagedBy": "terraform"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_password"></a> [password](#output\_password) | n/a |
| <a name="output_username"></a> [username](#output\_username) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
