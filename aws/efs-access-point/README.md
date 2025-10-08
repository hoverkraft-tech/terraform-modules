# AWS EFS Access Point Module

This module creates an EFS Access Point.
<!-- BEGIN_TF_DOCS -->
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
| [aws_efs_access_point.ap](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_access_point) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the current deployment | `string` | `""` | no |
| <a name="input_efs_file_system_id"></a> [efs\_file\_system\_id](#input\_efs\_file\_system\_id) | The ID of the EFS file system | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name to be used on all the resources as identifier | `string` | n/a | yes |
| <a name="input_posix_user"></a> [posix\_user](#input\_posix\_user) | The POSIX user and group applied to the root directory of the file system | <pre>object({<br>    gid = number<br>    uid = number<br>  })</pre> | `null` | no |
| <a name="input_root_directory"></a> [root\_directory](#input\_root\_directory) | The directory on the EFS file system that the access point exposes as the root directory to NFS clients using the access point | <pre>object({<br>    creation_info = object({<br>      owner_gid   = number<br>      owner_uid   = number<br>      permissions = string<br>    })<br>    path = string<br>  })</pre> | <pre>{<br>  "creation_info": {<br>    "owner_gid": 0,<br>    "owner_uid": 0,<br>    "permissions": "755"<br>  },<br>  "path": "/"<br>}</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to resources | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_file_system_arn"></a> [file\_system\_arn](#output\_file\_system\_arn) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
<!-- END_TF_DOCS -->
