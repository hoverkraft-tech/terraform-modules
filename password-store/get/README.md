# password-store secret accessor module

Get a secret from a password-store repository.

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
| [pass_password.secret](https://registry.terraform.io/providers/mecodia/pass/latest/docs/data-sources/password) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_path"></a> [path](#input\_path) | Password Store path to the secret | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_body"></a> [body](#output\_body) | n/a |
| <a name="output_data"></a> [data](#output\_data) | n/a |
| <a name="output_full"></a> [full](#output\_full) | n/a |
| <a name="output_password"></a> [password](#output\_password) | n/a |
| <a name="output_path"></a> [path](#output\_path) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
