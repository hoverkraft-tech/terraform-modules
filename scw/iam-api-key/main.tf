locals {
  interpolated_tags = merge(
    { "Customer" = var.customer },
    { "Environment" = var.environment },
    var.tags
  )
}
