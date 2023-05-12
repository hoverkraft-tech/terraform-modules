# password-store secret writter module

Put a secret into a password-store repository.
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_pass"></a> [pass](#requirement\_pass) | ~> 3.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_pass"></a> [pass](#provider\_pass) | ~> 3.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [pass_password.secret](https://registry.terraform.io/providers/mecodia/pass/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_data"></a> [data](#input\_data) | Additional key-value pairs to store with the password | `map(string)` | `null` | no |
| <a name="input_password"></a> [password](#input\_password) | Password to store | `string` | `null` | no |
| <a name="input_path"></a> [path](#input\_path) | Password Store path to the secret | `string` | n/a | yes |
| <a name="input_yaml"></a> [yaml](#input\_yaml) | YAML representation of the secret | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_body"></a> [body](#output\_body) | The body of the secret |
| <a name="output_full"></a> [full](#output\_full) | Entire secret contents |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
