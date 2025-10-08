# local-kubectl

Run a kubectl command from your computer

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_local"></a> [local](#requirement\_local) | ~> 2.2.3 |
| <a name="requirement_null"></a> [null](#requirement\_null) | ~> 3.2.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | ~> 3.2.4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.kubectl](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_always_run"></a> [always\_run](#input\_always\_run) | Always run the task, even if the pipeline has already been run | `bool` | `false` | no |
| <a name="input_commands"></a> [commands](#input\_commands) | Arguments to pass to the kubectl command | `list(string)` | <pre>[<br>  "get namespaces"<br>]</pre> | no |
| <a name="input_kubeconfig"></a> [kubeconfig](#input\_kubeconfig) | Kubeconfig file for the cluster | `string` | `"~/.kube/config"` | no |
| <a name="input_logfile"></a> [logfile](#input\_logfile) | File to write the output of the kubectl command to | `string` | `"/tmp/tf_kubectl_cmds.log"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace to run the command in (optional) | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The IDs of the kubectl commands |
<!-- END_TF_DOCS -->
