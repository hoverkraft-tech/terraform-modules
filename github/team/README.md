# GitHub repository

Create an opiniated github repository with terraform

## Authentication

- you must create a github app or a classic token with adminn rights
- then add the following in your provider configuration :

reference: https://registry.terraform.io/providers/integrations/github/latest/docs

### using an app (recommended)

```hcl
provider "github" {
  owner = var.github_organization
  # set one of GITHUB_APP_ID, GITHUB_APP_INSTALLATION_ID, GITHUB_APP_PEM_FILE env var
  app_auth {}
}
```

### using a github token (classic)

```hcl
provider "github" {
  owner = var.github_organization
  # and set GITHUB_TOKEN env var in your shell
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 6.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 6.0 |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.9.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_team.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the team to be created | `string` | `""` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the team to be created | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the github team to be created | `string` | n/a | yes |
| <a name="input_privacy"></a> [privacy](#input\_privacy) | The privacy mode (closed or secret) of the team to be created | `string` | `"closed"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to the team to be created | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created team |
| <a name="output_node_id"></a> [node\_id](#output\_node\_id) | The Node ID of the created team |
| <a name="output_slug"></a> [slug](#output\_slug) | The slug of the created team |
<!-- END_TF_DOCS -->
