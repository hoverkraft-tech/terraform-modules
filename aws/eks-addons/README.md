# eks addons

Deploy a llist of eks addons to an eks cluster
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
| [aws_eks_addon.addon](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_addons"></a> [addons](#input\_addons) | List of addons to enable and version to use | `list(map(string))` | <pre>[<br>  {<br>    "name": "vpc-cni",<br>    "version": "v1.10.1-eksbuild.1"<br>  },<br>  {<br>    "name": "coredns",<br>    "version": "v1.8.4-eksbuild.1"<br>  },<br>  {<br>    "name": "kube-proxy",<br>    "version": "v1.21.2-eksbuild.2"<br>  },<br>  {<br>    "name": "ebs-csi-driver",<br>    "version": "v1.11.2-eksbuild.1"<br>  }<br>]</pre> | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of the cluster | `string` | n/a | yes |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the current addons set | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment for the current addons set | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the current addons set | `string` | `"eks-addons"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to resources | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_addon_arns"></a> [addon\_arns](#output\_addon\_arns) | The ARNs of the EKS addons |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
