# OVH PCI private subnet

Create an OVH managed Kubernetes nodepool

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
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
| [ovh_cloud_project_kube_nodepool.pool](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_kube_nodepool) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_anti_affinity"></a> [anti\_affinity](#input\_anti\_affinity) | Should the pool use anti affinity features | `bool` | `false` | no |
| <a name="input_autoscale"></a> [autoscale](#input\_autoscale) | Enable auto-scaling for the pool | `bool` | `false` | no |
| <a name="input_cloud_project_id"></a> [cloud\_project\_id](#input\_cloud\_project\_id) | The OVH public cloud project id | `string` | n/a | yes |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the current deployment | `string` | `""` | no |
| <a name="input_desired_nodes"></a> [desired\_nodes](#input\_desired\_nodes) | Desired number of nodes in the pool | `number` | `1` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment for the current deployment | `string` | `""` | no |
| <a name="input_flavor_name"></a> [flavor\_name](#input\_flavor\_name) | The flavor of OS image to use | `string` | `"b2-7"` | no |
| <a name="input_kube_id"></a> [kube\_id](#input\_kube\_id) | The kube controlplane id | `string` | n/a | yes |
| <a name="input_max_nodes"></a> [max\_nodes](#input\_max\_nodes) | Maximum number of nodes in the pool | `number` | `1` | no |
| <a name="input_min_nodes"></a> [min\_nodes](#input\_min\_nodes) | Minimum number of nodes in the pool | `number` | `1` | no |
| <a name="input_monthly_billed"></a> [monthly\_billed](#input\_monthly\_billed) | Should the nodes be billed on a monthly basis | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this instance | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to resources | `map(any)` | `{}` | no |
| <a name="input_template"></a> [template](#input\_template) | The template to use for the nodepool | `any` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_available_nodes"></a> [available\_nodes](#output\_available\_nodes) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
