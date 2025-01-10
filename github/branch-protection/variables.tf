variable "name" {
  description = "The name of the branch protection rule"
  type        = string
}

variable "customer" {
  description = "Customer for the current deployment"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment for the current deployment"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Default tags to add to resources"
  type        = map(any)
  default     = {}
}

# module specific variables
variable "repository_id" {
  description = "Name or id of the GitHub repository to protect"
  type        = string
}

variable "branch_pattern" {
  description = "Branch name pattern to protect"
  type        = string
  default     = "main"
}

variable "enforce_admins" {
  description = "Enforce required status checks for repository administrators"
  type        = bool
  default     = true
}

variable "required_status_checks" {
  description = "Require status checks to pass before merging"
  type        = any
  default     = {}
}

variable "required_pull_request_reviews" {
  description = "Require pull request reviews before merging"
  type        = any
  default     = {}
}

variable "restrict_pushes" {
  description = "Restrict who can push to the branch"
  type        = any
  default     = {}
}

variable "force_push_bypassers" {
  description = "List of actor IDs that can bypass force push restrictions"
  type        = any
  default     = []
}

variable "require_signed_commits" {
  description = "Require commits to be signed"
  type        = bool
  default     = true
}

variable "required_linear_history" {
  description = "Enforce a linear commit history"
  type        = bool
  default     = true
}

variable "require_conversation_resolution" {
  description = "Require conversation resolution before merging"
  type        = bool
  default     = true
}

variable "allows_deletions" {
  description = "Allow branch deletions"
  type        = bool
  default     = false
}

variable "allows_force_pushes" {
  description = "Allow force pushes"
  type        = bool
  default     = false
}

variable "lock_branch" {
  description = "Lock the branch"
  type        = bool
  default     = false
}
