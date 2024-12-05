# OVH Kubernetes Managed Cluster

Create an OVH managed Kubernetes cluster

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
| [ovh_cloud_project_kube.k8s](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_kube) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_project_id"></a> [cloud\_project\_id](#input\_cloud\_project\_id) | Cloud project ID for this cluster | `string` | n/a | yes |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the current deployment | `string` | `""` | no |
| <a name="input_default_vrack_gateway"></a> [default\_vrack\_gateway](#input\_default\_vrack\_gateway) | Default vrack gateway for nodes egress | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment for the current deployment | `string` | `""` | no |
| <a name="input_k8s_version"></a> [k8s\_version](#input\_k8s\_version) | The kubernetes version for this cluster | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this instance | `string` | `""` | no |
| <a name="input_private_network_id"></a> [private\_network\_id](#input\_private\_network\_id) | Private network ID for the nodes of this cluster | `string` | `""` | no |
| <a name="input_private_network_routing_as_default"></a> [private\_network\_routing\_as\_default](#input\_private\_network\_routing\_as\_default) | Private network routing used as default if true | `bool` | `false` | no |
| <a name="input_region"></a> [region](#input\_region) | Region applied to this cluster | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to resources | `map(any)` | `{}` | no |
| <a name="input_update_policy"></a> [update\_policy](#input\_update\_policy) | Update policy for this cluster | `string` | `"ALWAYS_UPDATE"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_kubeconfig"></a> [kubeconfig](#output\_kubeconfig) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
