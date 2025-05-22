resource "aws_iam_policy" "policy" {
  name        = var.name
  description = "${var.name} IAM policy"
  policy      = var.policy
  tags        = merge({ Name = var.name }, local.interpolated_tags)
}
