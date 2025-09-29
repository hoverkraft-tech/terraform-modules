locals {
  interpolated_tags = merge({
    "Name"           = var.name,
    "Customer"       = var.customer,
    "ManagedBy"      = "Terraform",
    "LastModifiedAt" = time_static.last_update.rfc3339,
    },
    var.tags
  )
  root_directory = {
    path = var.root_directory.path == null ? "/" : var.root_directory.path
    creation_info = var.root_directory.creation_info == null ? {
      owner_gid   = 0
      owner_uid   = 0
      permissions = "755"
    } : var.root_directory.creation_info
  }
}

resource "time_static" "last_update" {
}
