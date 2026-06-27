locals {
  interpolated_tags = merge({
    "Name"           = var.name,
    "Customer"       = var.customer,
    "Environment"    = var.environment,
    "ManagedBy"      = "Terraform",
    "LastModifiedAt" = time_static.last_update.rfc3339,
    },
    var.tags
  )
}

resource "time_static" "last_update" {
}
