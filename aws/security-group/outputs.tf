output "arn" {
  value       = aws_security_group.sg.arn
  description = "AWS security group arn"
}

output "name" {
  value       = aws_security_group.sg.name
  description = "AWS security group name"
}

output "id" {
  value       = aws_security_group.sg.id
  description = "AWS security group id"
}
