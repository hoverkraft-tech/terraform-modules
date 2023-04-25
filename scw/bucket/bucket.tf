resource "scaleway_object_bucket" "bucket" {
  name          = var.name
  region        = var.region
  tags          = var.tags
  force_destroy = var.force_destroy

  dynamic "lifecycle_rule" {
    for_each = var.lifecycle_rules
    content {
      enabled    = lifecycle_rule.value.enabled
      expiration {
        days = lifecycle_rule.value.expiration.days
      }
      transition {
        days = lifecycle_rule.value.transition.days
        storage_class = lifecycle_rule.value.transition.storage_class
      }
      abort_incomplete_multipart_upload_days = lifecycle_rule.value.abort_incomplete_multipart_upload_days
      prefix     = lifecycle_rule.value.prefix
    }
  }

  dynamic "cors_rule" {
    for_each = var.cors_rules
    content {
      allowed_headers = cors_rule.value.allowed_headers
      allowed_methods = cors_rule.value.allowed_methods
      allowed_origins = cors_rule.value.allowed_origins
      expose_headers  = cors_rule.value.expose_headers
      max_age_seconds = cors_rule.value.max_age_seconds
    }
  }

  dynamic "versioning" {
    for_each = var.versioning ? [1] : []
    content {
      enabled = true
    }
  }

}
