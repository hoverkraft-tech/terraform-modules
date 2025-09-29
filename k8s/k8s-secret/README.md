# k8s-secret

Create a secret in kubernetes

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | ~> 2.16.1 |
| <a name="requirement_local"></a> [local](#requirement\_local) | ~> 2.2.3 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | ~> 2.16.1 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.9.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_secret.secret](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_config_context"></a> [config\_context](#input\_config\_context) | The context to use for the kubernetes provider | `string` | `null` | no |
| <a name="input_config_path"></a> [config\_path](#input\_config\_path) | The kubeconfig to use for the kubernetes provider | `string` | `""` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the current deployment | `string` | `""` | no |
| <a name="input_data"></a> [data](#input\_data) | The data to store in the secret | `map(any)` | `{}` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels to add to the secret | `map(any)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the helm release | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The namespace to deploy the secret into | `string` | `"default"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to resources | `map(any)` | `{}` | no |
| <a name="input_type"></a> [type](#input\_type) | The type of secret to create | `string` | `"Opaque"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
