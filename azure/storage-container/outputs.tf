output "id" {
  description = "The id of the created Storage Container"
  value       = azurerm_storage_container.main.id
}

output "name" {
  description = "The name of the created Storage Container"
  value       = azurerm_storage_container.main.name
}
