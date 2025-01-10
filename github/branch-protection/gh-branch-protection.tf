resource "github_branch_protection" "main" {
  #checkov:skip=CKV_GIT_5:invalid - it's up to the user choice
  repository_id                   = var.repository_id
  pattern                         = var.branch_pattern
  enforce_admins                  = var.enforce_admins
  require_signed_commits          = var.require_signed_commits
  required_linear_history         = var.required_linear_history
  require_conversation_resolution = var.require_conversation_resolution
  allows_deletions                = var.allows_deletions
  allows_force_pushes             = var.allows_force_pushes
  lock_branch                     = var.lock_branch
  force_push_bypassers            = var.force_push_bypassers

  dynamic "required_status_checks" {
    for_each = var.required_status_checks != {} ? [var.required_status_checks] : []
    content {
      strict   = required_status_checks.strict
      contexts = required_status_checks.contexts
    }
  }

  dynamic "required_pull_request_reviews" {
    for_each = var.required_pull_request_reviews != {} ? [var.required_pull_request_reviews] : []
    content {
      dismiss_stale_reviews  = required_pull_request_reviews.dismiss_stale_reviews
      restrict_dismissals    = required_pull_request_reviews.restrict_dismissals
      dismissal_restrictions = required_pull_request_reviews.dismissal_restrictions
    }
  }

  dynamic "restrict_pushes" {
    for_each = var.restrict_pushes != {} ? [var.restrict_pushes] : []
    content {
      push_allowances = restrict_pushes.push_allowances
    }
  }
}
