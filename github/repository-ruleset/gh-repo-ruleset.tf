resource "github_repository_ruleset" "default" {
  name        = var.name
  repository  = var.repository_id
  target      = var.target
  enforcement = var.enforcement

  dynamic "conditions" {
    for_each = var.conditions
    content {
      ref_name {
        include = try(conditions.value["include"], ["~DEFAULT_BRANCH"])
        exclude = try(conditions.value["exclude"], [])
      }
    }
  }

  dynamic "bypass_actors" {
    for_each = var.bypass_actors
    content {
      actor_id    = try(bypass_actors.value["actor_id"], 0)
      actor_type  = try(bypass_actors.value["actor_type"], "OrganizationAdmin")
      bypass_mode = try(bypass_actors.value["bypass_mode"], "always")
    }
  }

  dynamic "rules" {
    for_each = var.rules
    content {
      creation                      = try(rules.value["creation"], true)
      deletion                      = try(rules.value["deletion"], true)
      non_fast_forward              = try(rules.value["non_fast_forward"], true)
      required_linear_history       = try(rules.value["required_linear_history"], true)
      required_signatures           = try(rules.value["required_signatures"], true)
      update                        = try(rules.value["update"], false)
      update_allows_fetch_and_merge = try(rules.value["update_allows_fetch_and_merge"], false)

      dynamic "branch_name_pattern" {
        for_each = try(rules.value["branch_name_pattern"], {}) != {} ? [rules.value["branch_name_pattern"]] : []
        content {
          operator = branch_name_pattern.value["operator"]
          pattern  = branch_name_pattern.value["pattern"]
          name     = branch_name_pattern.value["name"]
          negate   = branch_name_pattern.value["negate"]
        }
      }

      dynamic "commit_author_email_pattern" {
        for_each = try(rules.value["commit_author_email_pattern"], {}) != {} ? [rules.value["commit_author_email_pattern"]] : []
        content {
          operator = commit_author_email_pattern.value["operator"]
          pattern  = commit_author_email_pattern.value["pattern"]
          name     = commit_author_email_pattern.value["name"]
          negate   = commit_author_email_pattern.value["negate"]
        }
      }

      dynamic "commit_message_pattern" {
        for_each = try(rules.value["commit_message_pattern"], {}) != {} ? [rules.value["commit_message_pattern"]] : []
        content {
          operator = commit_message_pattern.value["operator"]
          pattern  = commit_message_pattern.value["pattern"]
          name     = commit_message_pattern.value["name"]
          negate   = commit_message_pattern.value["negate"]
        }
      }

      dynamic "committer_email_pattern" {
        for_each = try(rules.value["committer_email_pattern"], {}) != {} ? [rules.value["committer_email_pattern"]] : []
        content {
          operator = committer_email_pattern.value["operator"]
          pattern  = committer_email_pattern.value["pattern"]
          name     = committer_email_pattern.value["name"]
          negate   = committer_email_pattern.value["negate"]
        }
      }

      dynamic "pull_request" {
        for_each = try(rules.value["pull_request"], {}) != {} ? [rules.value["pull_request"]] : []
        content {
          dismiss_stale_reviews_on_push     = pull_request.value["dismiss_stale_reviews_on_push"]
          require_code_owner_review         = pull_request.value["require_code_owner_review"]
          require_last_push_approval        = pull_request.value["require_last_push_approval"]
          required_approving_review_count   = pull_request.value["required_approving_review_count"]
          required_review_thread_resolution = pull_request.value["required_review_thread_resolution"]
        }
      }

      dynamic "required_deployments" {
        for_each = try(rules.value["required_deployments"], {}) != {} ? [rules.value["required_deployments"]] : []
        content {
          required_deployment_environments = required_deployments.value["required_deployment_environments"]
        }
      }

      dynamic "required_status_checks" {
        for_each = try(rules.value["required_status_checks"], {}) != {} ? [rules.value["required_status_checks"]] : []
        content {
          dynamic "required_check" {
            for_each = try(required_status_checks.value["required_check"], {}) != {} ? [required_status_checks.value["required_check"]] : []
            content {
              context        = required_check.value["context"]
              integration_id = required_check.value["integration_id"]
            }
          }
        }
      }

      dynamic "tag_name_pattern" {
        for_each = try(rules.value["tag_name_pattern"], {}) != {} ? [rules.value["tag_name_pattern"]] : []
        content {
          operator = tag_name_pattern.value["operator"]
          pattern  = tag_name_pattern.value["pattern"]
          name     = tag_name_pattern.value["name"]
          negate   = tag_name_pattern.value["negate"]
        }
      }

      dynamic "required_code_scanning" {
        for_each = try(rules.value["required_code_scanning"], {}) != {} ? [rules.value["required_code_scanning"]] : []
        content {
          dynamic "required_code_scanning_tool" {
            for_each = try(required_code_scanning.value["required_code_scanning_tool"], {}) != {} ? [required_code_scanning.value["required_code_scanning_tool"]] : []
            content {
              alerts_threshold          = required_code_scanning_tool.value["alerts_threshold"]
              security_alerts_threshold = required_code_scanning_tool.value["security_alerts_threshold"]
              tool                      = required_code_scanning_tool.value["tool"]
            }
          }
        }
      }
    }
  }
}
