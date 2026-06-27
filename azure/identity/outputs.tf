output "id" {
  description = "The ID of the created identity"
  value       = azurerm_user_assigned_identity.main.id
}

output "client_id" {
  description = "The client ID of the created identity"
  value       = azurerm_user_assigned_identity.main.client_id
}

output "principal_id" {
  description = "The principal ID of the created identity"
  value       = azurerm_user_assigned_identity.main.principal_id
}
