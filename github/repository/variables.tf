variable "name" {
  description = "The name of the github repository to be created"
  type        = string
}

variable "customer" {
  description = "Customer for the current deployment"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Default tags to add to resources"
  type        = map(any)
  default     = {}
}

# module specific variables
variable "description" {
  description = "A short description of the repository"
  type        = string
  default     = "terraform created repository"
}

variable "has_issues" {
  description = "Set to true to enable issues for this repository"
  type        = bool
  default     = true
}

variable "has_discussions" {
  description = "Set to true to enable discussions for this repository"
  type        = bool
  default     = false
}

variable "has_projects" {
  description = "Set to true to enable projects for this repository"
  type        = bool
  default     = false
}

variable "has_wiki" {
  description = "Set to true to enable the wiki for this repository"
  type        = bool
  default     = false
}

variable "homepage_url" {
  description = "URL of a page describing the project"
  type        = string
  default     = ""
}

variable "is_template" {
  description = "Set to true to make this repository a template"
  type        = bool
  default     = false
}

variable "visibility" {
  description = "Can be public, private, or internal"
  type        = string
  default     = "private"
}

variable "allow_merge_commit" {
  description = "Set to true to allow merge commits"
  type        = bool
  default     = false
}

variable "allow_squash_merge" {
  description = "Set to true to allow squash merges"
  type        = bool
  default     = false
}

variable "allow_rebase_merge" {
  description = "Set to true to allow rebase merges"
  type        = bool
  default     = true
}

variable "allow_auto_merge" {
  description = "Set to true to allow auto-merge"
  type        = bool
  default     = false
}

variable "delete_branch_on_merge" {
  description = "Set to true to delete head branches when pull requests are merged"
  type        = bool
  default     = true
}

variable "web_commit_signoff_required" {
  description = "Set to true to require contributors to sign off on web-based commits"
  type        = bool
  default     = true
}

variable "auto_init" {
  description = "Set to true to produce an initial commit in the repository"
  type        = bool
  default     = true
}

variable "gitignore_template" {
  description = "Use a template for the .gitignore file"
  type        = string
  default     = ""
}

variable "license_template" {
  description = "Use a template for the LICENSE file"
  type        = string
  default     = ""
}

variable "archived" {
  description = "Set to true to archive the repository"
  type        = bool
  default     = false
}

variable "topics" {
  description = "The list of topics of the repository"
  type        = list(string)
  default     = []
}

variable "archive_on_destroy" {
  description = "Set to true to archive the repository instead of deleting on destroy"
  type        = bool
  default     = false
}

variable "pages" {
  description = "Configuration block for GitHub Pages"
  type        = any
  default     = {}
}

variable "security_and_analysis" {
  description = "Configuration block for security and analysis features"
  type        = any
  default     = {}
}

variable "template" {
  description = "Configuration block for using a template repository"
  type        = any
  default     = {}
}

variable "vulnerability_alerts" {
  description = "Set to true to enable vulnerability alerts"
  type        = bool
  default     = true
}

variable "ignore_vulnerability_alerts_during_read" {
  description = "Set to true to ignore vulnerability alerts during read"
  type        = bool
  default     = false
}

variable "allow_update_branch" {
  description = "Set to true to allow updating branches"
  type        = bool
  default     = false
}

variable "admin_team" {
  description = "The org team to set as admins"
  type        = string
}
