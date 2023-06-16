resource "aws_s3_bucket_lifecycle_configuration" "config" {
  bucket = var.bucket_id

  dynamic "rule" {
    for_each = var.rules

    content {
      id     = lookup(rule.value, "name", rule.key)
      status = rule.value.status

      dynamic "filter" {
        for_each = lookup(rule.value, "filter", {})

        content {
          prefix = lookup(rule.value.filter, "prefix", null)
        }
      }

      dynamic "transition" {
        for_each = lookup(rule.value, "transition", {})
        content {
          days          = lookup(rule.value.transition, "days", null)
          storage_class = lookup(rule.value.transition, "storage_class", null)
        }
      }

      dynamic "expiration" {
        for_each = lookup(rule.value, "expiration", {})
        content {
          date = lookup(rule.value.expiration, "date", null)
          days = lookup(rule.value.expiration, "days", null)
        }
      }
    }
  }
}
