locals {
  # tflint-ignore: terraform_unused_declarations
  interpolated_tags = merge(
    { "Customer" = var.customer },
    { "Environment" = var.environment },
    var.tags
  )
}
