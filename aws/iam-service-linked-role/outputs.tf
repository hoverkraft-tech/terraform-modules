output "arn" {
  value       = aws_iam_service_linked_role.role.arn
  description = "AWS IAM role arn"
}

output "name" {
  value       = aws_iam_service_linked_role.role.name
  description = "AWS IAM role name"
}

output "unique_id" {
  value       = aws_iam_service_linked_role.role.unique_id
  description = "AWS IAM role unique ID"
}
