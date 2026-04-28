output "id" {
  description = "The ID of the created Firewall Policy"
  value       = azurerm_firewall_policy.main.id
}

output "name" {
  description = "The name of the created Firewall Policy"
  value       = azurerm_firewall_policy.main.name
}
