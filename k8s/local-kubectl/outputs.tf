output "id" {
  description = "The IDs of the kubectl commands"
  value       = null_resource.kubectl[*].id
}

output "commands_count" {
  description = "The number of kubectl commands executed"
  value       = length(null_resource.kubectl)
}
