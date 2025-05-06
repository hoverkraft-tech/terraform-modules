resource "aws_iam_role" "role" {
  name                = var.name
  tags                = merge({ Name = var.name }, local.interpolated_tags)
  assume_role_policy  = var.assume_role_policy
  managed_policy_arns = var.managed_policies_arns
  dynamic "inline_policy" {
    for_each = var.inline_policies
    content {
      name   = inline_policy.key
      policy = inline_policy.value
    }
  }
}
