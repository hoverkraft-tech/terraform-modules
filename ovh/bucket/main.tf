locals {
  # tflint-ignore: terraform_unused_declarations
  interpolated_tags = merge({
    "Name"           = var.name,
    "Customer"       = var.customer,
    "Environment"    = var.environment,
    "ManagedBy"      = "Terraform",
    "LastModifiedAt" = time_static.last_update.rfc3339,
    },
    var.tags
  )
  s3_region = lower(element(regex("(.*)[[:digit:]]?$", var.region), 0))
}

resource "time_static" "last_update" {
}
