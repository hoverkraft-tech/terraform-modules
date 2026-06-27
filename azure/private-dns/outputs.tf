output "id" {
  description = "The ID of the created private DNS zone"
  value       = azurerm_private_dns_zone.main.id
}

output "name" {
  description = "The name of the created private DNS zone"
  value       = azurerm_private_dns_zone.main.name
}
