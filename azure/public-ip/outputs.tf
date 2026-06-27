output "id" {
  description = "The ID of the created Public IP"
  value       = azurerm_public_ip.main.id
}

output "name" {
  description = "The name of the created Public IP"
  value       = azurerm_public_ip.main.name
}

output "ip_address" {
  description = "The IP address value that was allocated"
  value       = azurerm_public_ip.main.ip_address
}
