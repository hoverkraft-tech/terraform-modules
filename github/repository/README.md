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
| [github_branch_default.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_default) | resource |
| [github_repository.repository](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_team_repository.admins](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_repository) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_team"></a> [admin\_team](#input\_admin\_team) | The org team to set as admins | `string` | n/a | yes |
| <a name="input_allow_auto_merge"></a> [allow\_auto\_merge](#input\_allow\_auto\_merge) | Set to true to allow auto-merge | `bool` | `false` | no |
| <a name="input_allow_merge_commit"></a> [allow\_merge\_commit](#input\_allow\_merge\_commit) | Set to true to allow merge commits | `bool` | `false` | no |
| <a name="input_allow_rebase_merge"></a> [allow\_rebase\_merge](#input\_allow\_rebase\_merge) | Set to true to allow rebase merges | `bool` | `true` | no |
| <a name="input_allow_squash_merge"></a> [allow\_squash\_merge](#input\_allow\_squash\_merge) | Set to true to allow squash merges | `bool` | `false` | no |
| <a name="input_allow_update_branch"></a> [allow\_update\_branch](#input\_allow\_update\_branch) | Set to true to allow updating branches | `bool` | `false` | no |
| <a name="input_archive_on_destroy"></a> [archive\_on\_destroy](#input\_archive\_on\_destroy) | Set to true to archive the repository instead of deleting on destroy | `bool` | `false` | no |
| <a name="input_archived"></a> [archived](#input\_archived) | Set to true to archive the repository | `bool` | `false` | no |
| <a name="input_auto_init"></a> [auto\_init](#input\_auto\_init) | Set to true to produce an initial commit in the repository | `bool` | `true` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer for the current deployment | `string` | `""` | no |
| <a name="input_delete_branch_on_merge"></a> [delete\_branch\_on\_merge](#input\_delete\_branch\_on\_merge) | Set to true to delete head branches when pull requests are merged | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | A short description of the repository | `string` | `"terraform created repository"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment for the current deployment | `string` | `""` | no |
| <a name="input_gitignore_template"></a> [gitignore\_template](#input\_gitignore\_template) | Use a template for the .gitignore file | `string` | `""` | no |
| <a name="input_has_discussions"></a> [has\_discussions](#input\_has\_discussions) | Set to true to enable discussions for this repository | `bool` | `false` | no |
| <a name="input_has_issues"></a> [has\_issues](#input\_has\_issues) | Set to true to enable issues for this repository | `bool` | `true` | no |
| <a name="input_has_projects"></a> [has\_projects](#input\_has\_projects) | Set to true to enable projects for this repository | `bool` | `false` | no |
| <a name="input_has_wiki"></a> [has\_wiki](#input\_has\_wiki) | Set to true to enable the wiki for this repository | `bool` | `false` | no |
| <a name="input_homepage_url"></a> [homepage\_url](#input\_homepage\_url) | URL of a page describing the project | `string` | `""` | no |
| <a name="input_ignore_vulnerability_alerts_during_read"></a> [ignore\_vulnerability\_alerts\_during\_read](#input\_ignore\_vulnerability\_alerts\_during\_read) | Set to true to ignore vulnerability alerts during read | `bool` | `false` | no |
| <a name="input_is_template"></a> [is\_template](#input\_is\_template) | Set to true to make this repository a template | `bool` | `false` | no |
| <a name="input_license_template"></a> [license\_template](#input\_license\_template) | Use a template for the LICENSE file | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the github repository to be created | `string` | n/a | yes |
| <a name="input_pages"></a> [pages](#input\_pages) | Configuration block for GitHub Pages | `any` | `{}` | no |
| <a name="input_security_and_analysis"></a> [security\_and\_analysis](#input\_security\_and\_analysis) | Configuration block for security and analysis features | `any` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to add to resources | `map(any)` | `{}` | no |
| <a name="input_template"></a> [template](#input\_template) | Configuration block for using a template repository | `any` | `{}` | no |
| <a name="input_topics"></a> [topics](#input\_topics) | The list of topics of the repository | `list(string)` | `[]` | no |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | Can be public, private, or internal | `string` | `"private"` | no |
| <a name="input_vulnerability_alerts"></a> [vulnerability\_alerts](#input\_vulnerability\_alerts) | Set to true to enable vulnerability alerts | `bool` | `true` | no |
| <a name="input_web_commit_signoff_required"></a> [web\_commit\_signoff\_required](#input\_web\_commit\_signoff\_required) | Set to true to require contributors to sign off on web-based commits | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repository_default_branch"></a> [repository\_default\_branch](#output\_repository\_default\_branch) | The name of the default branch of the repository. |
| <a name="output_repository_full_name"></a> [repository\_full\_name](#output\_repository\_full\_name) | A string of the form 'orgname/reponame'. |
| <a name="output_repository_git_clone_url"></a> [repository\_git\_clone\_url](#output\_repository\_git\_clone\_url) | URL that can be provided to git clone to clone the repository anonymously via the git protocol. |
| <a name="output_repository_html_url"></a> [repository\_html\_url](#output\_repository\_html\_url) | URL to the repository on the web. |
| <a name="output_repository_http_clone_url"></a> [repository\_http\_clone\_url](#output\_repository\_http\_clone\_url) | URL that can be provided to git clone to clone the repository via HTTPS. |
| <a name="output_repository_id"></a> [repository\_id](#output\_repository\_id) | The ID of the repository. |
| <a name="output_repository_name"></a> [repository\_name](#output\_repository\_name) | The name of the repository. |
| <a name="output_repository_node_id"></a> [repository\_node\_id](#output\_repository\_node\_id) | The Node ID of the repository. |
| <a name="output_repository_ssh_clone_url"></a> [repository\_ssh\_clone\_url](#output\_repository\_ssh\_clone\_url) | URL that can be provided to git clone to clone the repository via SSH. |
| <a name="output_repository_visibility"></a> [repository\_visibility](#output\_repository\_visibility) | The visibility of the repository. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
