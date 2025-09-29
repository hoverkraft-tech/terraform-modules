locals {
  # tflint-ignore: terraform_unused_declarations
  interpolated_tags = merge({
    "Name"           = var.name,
    "Customer"       = var.customer,
    "ManagedBy"      = "Terraform",
    "LastModifiedAt" = time_static.last_update.rfc3339,
    },
    var.tags
  )
  instances_lenght = var.instances == null ? 0 : length(var.instances)
  instances_count  = var.engine_mode == "serverless" ? 0 : local.instances_lenght
}

resource "time_static" "last_update" {
}
