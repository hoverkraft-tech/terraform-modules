output "id" {
  description = "The ID of the created role"
  value       = azurerm_role_definition.main.id
}

output "role_definition_id" {
  description = "The Role Definition ID of the created role"
  value       = azurerm_role_definition.main.role_definition_id
}
