output "id" {
  description = "The ID of the created Azure Firewall"
  value       = azurerm_firewall.main.id
}

output "name" {
  description = "The name of the created Azure Firewall"
  value       = azurerm_firewall.main.name
}

output "private_ip_address" {
  description = "The private IP address of the Azure Firewall"
  value       = azurerm_firewall.main.ip_configuration[0].private_ip_address
}

output "public_ip_address" {
  description = "The public IP address associated with the Firewall (if any)"
  value       = try(azurerm_firewall.main.ip_configuration[0].public_ip_address_id, null)
}
