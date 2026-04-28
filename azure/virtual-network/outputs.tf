output "id" {
  description = "The ID of the created virtual network"
  value       = azurerm_virtual_network.main.id
}

output "name" {
  description = "The name of the created cirtual network"
  value       = azurerm_virtual_network.main.name
}
