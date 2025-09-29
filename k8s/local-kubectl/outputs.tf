output "id" {
  description = "The IDs of the kubectl commands"
  value       = null_resource.kubectl[*].id
}
