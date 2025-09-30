# GitHub repository branch protection rules

Add branch protection rule to your GitHub repository

## Authentication

- you must create a GitHub app or a classic token with admin rights
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

### using a GitHub token (classic)

```hcl
provider "github" {
  owner = var.github_organization
  # and set GITHUB_TOKEN env var in your shell
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
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
| [github_branch_protection.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allows_deletions"></a> [allows\_deletions](#input\_allows\_deletions) | Allow branch deletions | `bool` | `false` | no |
| <a name="input_allows_force_pushes"></a> [allows\_force\_pushes](#input\_allows\_force\_pushes) | Allow force pushes | `bool` | `false` | no |
| <a name="input_branch_pattern"></a> [branch\_pattern](#input\_branch\_pattern) | Branch name pattern to protect | `string` | `"main"` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the current deployment | `string` | `""` | no |
| <a name="input_enforce_admins"></a> [enforce\_admins](#input\_enforce\_admins) | Enforce required status checks for repository administrators | `bool` | `true` | no |
| <a name="input_force_push_bypassers"></a> [force\_push\_bypassers](#input\_force\_push\_bypassers) | List of actor IDs that can bypass force push restrictions | `any` | `[]` | no |
| <a name="input_lock_branch"></a> [lock\_branch](#input\_lock\_branch) | Lock the branch | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the branch protection rule | `string` | n/a | yes |
| <a name="input_repository_id"></a> [repository\_id](#input\_repository\_id) | Name or id of the GitHub repository to protect | `string` | n/a | yes |
| <a name="input_require_conversation_resolution"></a> [require\_conversation\_resolution](#input\_require\_conversation\_resolution) | Require conversation resolution before merging | `bool` | `true` | no |
| <a name="input_require_signed_commits"></a> [require\_signed\_commits](#input\_require\_signed\_commits) | Require commits to be signed | `bool` | `true` | no |
| <a name="input_required_linear_history"></a> [required\_linear\_history](#input\_required\_linear\_history) | Enforce a linear commit history | `bool` | `true` | no |
| <a name="input_required_pull_request_reviews"></a> [required\_pull\_request\_reviews](#input\_required\_pull\_request\_reviews) | Require pull request reviews before merging | `any` | `{}` | no |
| <a name="input_required_status_checks"></a> [required\_status\_checks](#input\_required\_status\_checks) | Require status checks to pass before merging | `any` | `{}` | no |
| <a name="input_restrict_pushes"></a> [restrict\_pushes](#input\_restrict\_pushes) | Restrict who can push to the branch | `any` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to resources | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the branch protection rule |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
