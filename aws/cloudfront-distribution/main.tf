locals {
  interpolated_tags = merge(
    { "Name" = var.name },
    { "Customer" = var.customer },
    { "Environment" = var.environment },
    var.tags
  )
}
