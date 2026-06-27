output "id" {
  description = "The ID of the created NAT Gateway"
  value       = azurerm_nat_gateway.main.id
}

output "public_ip_id" {
  description = "The ID of the created Public IP"
  value       = azurerm_public_ip.main.id
}

output "public_ip_address" {
  description = "The Public IP address value that was allocated"
  value       = azurerm_public_ip.main.ip_address
}
