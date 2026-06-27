output "id" {
  description = "The ID of the created service principal"
  value       = azuread_service_principal.sp.id
}

output "name" {
  description = "The name of the created service principal"
  value       = azuread_service_principal.sp.display_name
}

output "client_id" {
  description = "The Client ID of the created service principal"
  value       = azuread_application.application.client_id
}

output "client_secret" {
  description = "The password for this service principal"
  value       = azuread_service_principal_password.sp_password.value
  sensitive   = true
}

output "object_id" {
  description = "The Object ID of the created service principal"
  value       = azuread_service_principal.sp.object_id
}
