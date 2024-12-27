resource "aws_s3_bucket_website_configuration" "website-config" {
  bucket = var.bucket_id

  dynamic "index_document" {
    for_each = var.index_document != null ? { my = var.index_document } : {}
    content {
      suffix = try(index_document.value.suffix, null)
    }
  }

  dynamic "error_document" {
    for_each = var.error_document != null ? { my = var.error_document } : {}
    content {
      key = try(error_document.value.key, null)
    }
  }

  dynamic "redirect_all_requests_to" {
    for_each = var.redirect_all_requests_to != null ? { my = var.redirect_all_requests_to } : {}
    content {
      host_name = try(redirect_all_requests_to.value.host_name, null)
      protocol  = try(redirect_all_requests_to.value.protocol, null)
    }
  }

  routing_rules = var.routing_rules
}
