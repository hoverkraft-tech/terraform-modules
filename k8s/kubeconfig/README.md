# kubeconfig

Format a kubeconfig file from the inputs

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_local"></a> [local](#requirement\_local) | ~> 2.2.3 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | ~> 2.2.3 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.9.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_sensitive_file.kubeconfig](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/sensitive_file) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_content"></a> [content](#input\_content) | Content of the kubeconfig file | `string` | n/a | yes |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this instance | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this instance | `string` | `""` | no |
| <a name="input_filename"></a> [filename](#input\_filename) | The path where to store the kubeconfig file | `string` | `"/tmp/kube.config"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this instance | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this instance | `map(string)` | <pre>{<br>  "ManagedBy": "terraform"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kubeconfig_path"></a> [kubeconfig\_path](#output\_kubeconfig\_path) | Path to the kubeconfig file |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
