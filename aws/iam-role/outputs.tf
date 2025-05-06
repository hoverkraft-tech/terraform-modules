output "arn" {
  value       = aws_iam_role.role.arn
  description = "AWS IAM role arn"
}

output "name" {
  value       = aws_iam_role.role.name
  description = "AWS IAM role name"
}
