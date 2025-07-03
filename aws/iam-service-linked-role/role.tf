resource "aws_iam_service_linked_role" "role" {
  tags             = merge(local.interpolated_tags, { Name = var.name })
  aws_service_name = var.aws_service_name
  custom_suffix    = var.custom_suffix != null ? var.custom_suffix : null
  description      = "AWS service linked role ${var.name}"
}
