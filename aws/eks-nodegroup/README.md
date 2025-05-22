# eks nodegroup

Create an EKS nodegroup in AWS

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
| [aws_eks_node_group.node_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_type"></a> [ami\_type](#input\_ami\_type) | The type of AMI to use for the launch template | `string` | `"CUSTOM"` | no |
| <a name="input_capacity_type"></a> [capacity\_type](#input\_capacity\_type) | The type of capacity to use for the launch template | `string` | `"ON_DEMAND"` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of the cluster to use for the launch template | `string` | n/a | yes |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the current deployment | `string` | `""` | no |
| <a name="input_desired_size"></a> [desired\_size](#input\_desired\_size) | The desired size of the node group | `number` | `1` | no |
| <a name="input_disk_size"></a> [disk\_size](#input\_disk\_size) | The size of the disk to use for the launch template | `number` | `null` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment for the current deployment | `string` | `""` | no |
| <a name="input_force_update_version"></a> [force\_update\_version](#input\_force\_update\_version) | Force a new version of the launch template to be created | `bool` | `false` | no |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | The instance types to use for the launch template | `list(string)` | `null` | no |
| <a name="input_k8s_version"></a> [k8s\_version](#input\_k8s\_version) | The version of kubernetes to use | `string` | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels to add to the node group | `map(any)` | `{}` | no |
| <a name="input_launch_template_id"></a> [launch\_template\_id](#input\_launch\_template\_id) | The ID of the launch template to use | `string` | `null` | no |
| <a name="input_launch_template_version"></a> [launch\_template\_version](#input\_launch\_template\_version) | The version of the launch template to use | `string` | `null` | no |
| <a name="input_max_size"></a> [max\_size](#input\_max\_size) | The maximum size of the node group | `number` | `1` | no |
| <a name="input_min_size"></a> [min\_size](#input\_min\_size) | The minimum size of the node group | `number` | `1` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the launch template | `string` | n/a | yes |
| <a name="input_node_group_name_prefix"></a> [node\_group\_name\_prefix](#input\_node\_group\_name\_prefix) | Prefix to use for generated node group names | `string` | `null` | no |
| <a name="input_node_role_arn"></a> [node\_role\_arn](#input\_node\_role\_arn) | The ARN of the role to use for the launch template | `string` | n/a | yes |
| <a name="input_release_version"></a> [release\_version](#input\_release\_version) | The release version to use for the launch template | `string` | `null` | no |
| <a name="input_remote_access"></a> [remote\_access](#input\_remote\_access) | The remote access configuration to use for the launch template | <pre>object({<br>    ec2_ssh_key               = string<br>    source_security_group_ids = list(string)<br>  })</pre> | `null` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | The subnet IDs to use for the node group | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to resources | `map(any)` | `{}` | no |
| <a name="input_taints"></a> [taints](#input\_taints) | Taints to be applied to the node group | <pre>list(object({<br>    key    = string<br>    value  = string<br>    effect = string<br>  }))</pre> | `[]` | no |
| <a name="input_update_max_unavailable"></a> [update\_max\_unavailable](#input\_update\_max\_unavailable) | The maximum number of nodes that can be unavailable during an update | `string` | `"1"` | no |
| <a name="input_update_max_unavailable_percentage"></a> [update\_max\_unavailable\_percentage](#input\_update\_max\_unavailable\_percentage) | The maximum percentage of nodes that can be unavailable during an update | `number` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of the created EKS nodegroup |
| <a name="output_id"></a> [id](#output\_id) | ID of the created EKS nodegroup |
| <a name="output_name"></a> [name](#output\_name) | Name of the created EKS nodegroup |
| <a name="output_status"></a> [status](#output\_status) | Status of the created EKS nodegroup |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
