output "id" {
  description = "The ID of the launch template"
  value       = aws_launch_template.template.id
}

output "arn" {
  description = "The ARN of the launch template"
  value       = aws_launch_template.template.arn
}

output "latest_version" {
  description = "The latest version of the launch template"
  value       = aws_launch_template.template.latest_version
}
