# GitHub repository ruleset

Create repository-wide ruleset for your GitHub repository

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
| [github_repository_ruleset.default](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_ruleset) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bypass_actors"></a> [bypass\_actors](#input\_bypass\_actors) | List of actors allowed to bypass this ruleset | `list(any)` | <pre>[<br>  {<br>    "actor_id": 0,<br>    "actor_type": "OrganizationAdmin",<br>    "bypass_mode": "always"<br>  },<br>  {<br>    "actor_id": 5,<br>    "actor_type": "RepositoryRole",<br>    "bypass_mode": "always"<br>  },<br>  {<br>    "actor_id": 11722557,<br>    "actor_type": "Team",<br>    "bypass_mode": "always"<br>  }<br>]</pre> | no |
| <a name="input_conditions"></a> [conditions](#input\_conditions) | Conditions to apply this rule | `list(any)` | <pre>[<br>  {<br>    "include": [<br>      "~DEFAULT_BRANCH"<br>    ]<br>  }<br>]</pre> | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the current deployment | `string` | `""` | no |
| <a name="input_enforcement"></a> [enforcement](#input\_enforcement) | The type of enforcement (disabled, active, evaluate) | `string` | `"active"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment for the current deployment | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the branch protection rule | `string` | n/a | yes |
| <a name="input_repository_id"></a> [repository\_id](#input\_repository\_id) | Name or id of the GitHub repository to protect | `string` | n/a | yes |
| <a name="input_rules"></a> [rules](#input\_rules) | List of rules to include in the ruleset | `list(any)` | <pre>[<br>  {<br>    "branch_name_pattern": {},<br>    "commit_author_email_pattern": {},<br>    "commit_message_pattern": {},<br>    "committer_email_pattern": {},<br>    "pull_request": {<br>      "dismiss_stale_reviews_on_push": false,<br>      "require_code_owner_review": true,<br>      "require_last_push_approval": false,<br>      "required_approving_review_count": 1,<br>      "required_review_thread_resolution": true<br>    },<br>    "required_code_scanning": {},<br>    "required_deployments": {},<br>    "required_status_checks": {},<br>    "tag_name_pattern": {}<br>  }<br>]</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to resources | `map(any)` | `{}` | no |
| <a name="input_target"></a> [target](#input\_target) | The kind of target for the repository rule (branch or tag) | `string` | `"branch"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the repository ruleset |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
