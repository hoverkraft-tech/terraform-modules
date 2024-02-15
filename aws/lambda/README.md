# lambda module

A skeleton to start your own modules.

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
| [aws_lambda_function.function](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_code_signing_config_arn"></a> [code\_signing\_config\_arn](#input\_code\_signing\_config\_arn) | The ARN of the code signing configuration | `string` | `null` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the current deployment | `string` | `""` | no |
| <a name="input_dead_letter_config"></a> [dead\_letter\_config](#input\_dead\_letter\_config) | List of dead letter configuration blocks | <pre>object({<br>    target_arn = string<br>  })</pre> | `null` | no |
| <a name="input_env_vars"></a> [env\_vars](#input\_env\_vars) | A map that defines environment variables for the Lambda function | `map(string)` | `{}` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment for the current deployment | `string` | `""` | no |
| <a name="input_filename"></a> [filename](#input\_filename) | The path to the function's deployment package within the local filesystem | `string` | `""` | no |
| <a name="input_handler"></a> [handler](#input\_handler) | The function within your code that Lambda calls to begin execution | `string` | `"lambda_function.lambda_handler"` | no |
| <a name="input_iam_role_arn"></a> [iam\_role\_arn](#input\_iam\_role\_arn) | The ARN of the IAM role that the Lambda function assumes when it executes your function to access any other AWS resources | `string` | n/a | yes |
| <a name="input_kms_key_arn"></a> [kms\_key\_arn](#input\_kms\_key\_arn) | The ARN of the AWS Key Management Service (KMS) key that's used to encrypt your function's environment variables | `string` | `null` | no |
| <a name="input_lambda_description"></a> [lambda\_description](#input\_lambda\_description) | Description of the Lambda function | `string` | `""` | no |
| <a name="input_layers"></a> [layers](#input\_layers) | List of Lambda Layer Version ARNs (maximum of 5) to attach to your Lambda function | `list(string)` | `[]` | no |
| <a name="input_memory_size"></a> [memory\_size](#input\_memory\_size) | The amount of memory, in MB, that is allocated to your Lambda function | `number` | `128` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the template resource | `string` | `"my-template"` | no |
| <a name="input_reserved_concurrent_executions"></a> [reserved\_concurrent\_executions](#input\_reserved\_concurrent\_executions) | The number of simultaneous executions to reserve for the function | `number` | `1000` | no |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | The runtime environment for the Lambda function | `string` | `"python3.8"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to resources | `map(any)` | `{}` | no |
| <a name="input_timeout"></a> [timeout](#input\_timeout) | The amount of time that Lambda allows a function to run before stopping it | `number` | `3` | no |
| <a name="input_tracing_config_mode"></a> [tracing\_config\_mode](#input\_tracing\_config\_mode) | The tracing mode for the function | `string` | `"PassThrough"` | no |
| <a name="input_vpc_config"></a> [vpc\_config](#input\_vpc\_config) | List of VPC configuration blocks | <pre>object({<br>    security_group_ids = list(string)<br>    subnet_ids         = list(string)<br>  })</pre> | `null` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
