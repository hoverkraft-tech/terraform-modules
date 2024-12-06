locals {
  interpolated_tags = merge({
    # NOTE: label names must comply with DNS rfc1123
    "name"             = var.name,
    "customer"         = var.customer,
    "environment"      = var.environment,
    "managed-by"       = "Terraform",
    "last-modified-at" = time_static.last_update.rfc3339,
    },
    var.tags
  )
}

resource "time_static" "last_update" {
}
