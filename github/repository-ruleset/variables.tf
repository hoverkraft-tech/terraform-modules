variable "name" {
  description = "The name of the branch protection rule"
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
variable "repository_id" {
  description = "Name or id of the GitHub repository to protect"
  type        = string
}

variable "target" {
  description = "The kind of target for the repository rule (branch or tag)"
  type        = string
  default     = "branch"
}

variable "enforcement" {
  description = "The type of enforcement (disabled, active, evaluate)"
  type        = string
  default     = "active"
}

variable "conditions" {
  description = "Conditions to apply this rule"
  type        = list(any)
  default = [
    {
      include = [
        "~DEFAULT_BRANCH",
      ]
    }
  ]
}

variable "bypass_actors" {
  description = "List of actors allowed to bypass this ruleset"
  type        = list(any)
  default = [
    {
      actor_id    = 0
      actor_type  = "OrganizationAdmin"
      bypass_mode = "always"
    },
    {
      actor_id    = 5
      actor_type  = "RepositoryRole"
      bypass_mode = "always"
    },
    {
      actor_id    = 11722557 # todo : get this from repo dep ?
      actor_type  = "Team"
      bypass_mode = "always"
    },
  ]
}

variable "rules" {
  description = "List of rules to include in the ruleset"
  type        = list(any)
  default = [
    {
      branch_name_pattern         = {}
      commit_author_email_pattern = {}
      commit_message_pattern      = {}
      committer_email_pattern     = {}
      pull_request = {
        dismiss_stale_reviews_on_push     = false
        require_code_owner_review         = true
        require_last_push_approval        = false
        required_approving_review_count   = 1
        required_review_thread_resolution = true
      }
      required_code_scanning = {}
      required_deployments   = {}
      required_status_checks = {}
      tag_name_pattern       = {}
    }
  ]
}
