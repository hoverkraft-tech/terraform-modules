# helm release

Deploy a kubernetes application trough helm

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.8.0, < 3.0.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | >= 2.8.0, < 3.0.0 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.9.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.release](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_atomic"></a> [atomic](#input\_atomic) | Atomic deployment | `bool` | `false` | no |
| <a name="input_chart"></a> [chart](#input\_chart) | Chart to use for the current deployment | `string` | `""` | no |
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | Version of the chart to use for the current deployment | `string` | `""` | no |
| <a name="input_cleanup_on_fail"></a> [cleanup\_on\_fail](#input\_cleanup\_on\_fail) | Cleanup on fail | `bool` | `false` | no |
| <a name="input_create_namespace"></a> [create\_namespace](#input\_create\_namespace) | Create namespace | `bool` | `true` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the current deployment | `string` | `""` | no |
| <a name="input_kubeconfig_context"></a> [kubeconfig\_context](#input\_kubeconfig\_context) | Kubeconfig context to use for the current deployment | `string` | `null` | no |
| <a name="input_kubeconfig_paths"></a> [kubeconfig\_paths](#input\_kubeconfig\_paths) | List of kubeconfig paths to use for the current deployment | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the helm release | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace to use for the current deployment | `string` | `""` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Repository to use for the current deployment | `string` | `""` | no |
| <a name="input_sets"></a> [sets](#input\_sets) | List of sets to use for the current deployment | `list(map(string))` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to resources | `map(any)` | `{}` | no |
| <a name="input_values"></a> [values](#input\_values) | List of values to use for the current deployment | `list(string)` | `[]` | no |
| <a name="input_wait"></a> [wait](#input\_wait) | Wait for deployment to complete | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | The name of the helm release |
| <a name="output_namespace"></a> [namespace](#output\_namespace) | The namespace of the helm release |
<!-- END_TF_DOCS -->
