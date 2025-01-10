resource "github_repository" "repository" {
  #checkov:skip=CKV2_GIT_1:invalid - there is a dedicated other module for that
  name                                    = var.name
  description                             = var.description
  has_issues                              = var.has_issues
  has_discussions                         = var.has_discussions
  has_projects                            = var.has_projects
  has_wiki                                = var.has_wiki
  homepage_url                            = var.homepage_url
  is_template                             = var.is_template
  visibility                              = var.visibility
  gitignore_template                      = var.gitignore_template
  license_template                        = var.license_template
  archived                                = var.archived
  topics                                  = var.topics
  archive_on_destroy                      = var.archive_on_destroy
  vulnerability_alerts                    = var.vulnerability_alerts
  ignore_vulnerability_alerts_during_read = var.ignore_vulnerability_alerts_during_read
  allow_update_branch                     = var.allow_update_branch
  allow_merge_commit                      = var.allow_merge_commit
  allow_squash_merge                      = var.allow_squash_merge
  allow_rebase_merge                      = var.allow_rebase_merge
  allow_auto_merge                        = var.allow_auto_merge
  delete_branch_on_merge                  = var.delete_branch_on_merge
  web_commit_signoff_required             = var.web_commit_signoff_required
  auto_init                               = var.auto_init

  dynamic "pages" {
    for_each = var.pages != {} ? [var.pages] : []
    content {
      dynamic "source" {
        for_each = pages.value.source != {} ? [pages.value.source] : []
        content {
          branch = source.value.branch
          path   = source.value.path
        }
      }
      build_type = pages.value.build_type
      cname      = pages.value.cname
    }
  }

  dynamic "security_and_analysis" {
    for_each = var.security_and_analysis != {} ? [var.security_and_analysis] : []
    content {
      dynamic "advanced_security" {
        for_each = security_and_analysis.value.advanced_security != {} ? [security_and_analysis.value.advanced_security] : []
        content {
          status = advanced_security.status
        }
      }
      dynamic "secret_scanning" {
        for_each = security_and_analysis.value.secret_scanning != {} ? [security_and_analysis.value.secret_scanning] : []
        content {
          status = secret_scanning.status
        }
      }
      dynamic "secret_scanning_push_protection" {
        for_each = security_and_analysis.value.secret_scanning_push_protection != {} ? [security_and_analysis.value.secret_scanning_push_protection] : []
        content {
          status = secret_scanning_push_protection.status
        }
      }
    }
  }

  dynamic "template" {
    for_each = var.template != {} ? [var.template] : []
    content {
      owner                = template.owner
      repository           = template.repository
      include_all_branches = template.include_all_branches
    }
  }
}

resource "github_branch_default" "main" {
  repository = github_repository.repository.name
  branch     = "main"
}

resource "github_team_repository" "admins" {
  count      = var.admin_team == null ? 0 : 1
  team_id    = try(var.admin_team, null)
  repository = github_repository.repository.name
  permission = "admin"
}
