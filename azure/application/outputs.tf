output "id" {
  description = "The ID of the created application"
  value       = azuread_application.main.id
}

output "client_id" {
  description = "The client ID of the created application"
  value       = azuread_application.main.client_id
}

output "object_id" {
  description = "The object ID of the created application"
  value       = azuread_application.main.object_id
}
