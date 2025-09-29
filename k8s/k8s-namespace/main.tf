locals {
  interpolated_tags = merge({
    # NOTE: label names must comply with DNS rfc1123
    "name"             = lower(replace(var.name, "/[^a-zA-Z0-9-]/", "-")),
    "customer"         = lower(replace(var.customer, "/[^a-zA-Z0-9-]/", "-")),
    "managed-by"       = "terraform",
    "last-modified-at" = formatdate("YYYYMMDD-hhmmss", time_static.last_update.rfc3339),
    },
    var.tags
  )
}

resource "time_static" "last_update" {
}
