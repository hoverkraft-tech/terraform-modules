output "id" {
  description = "The ID of the created Firewall Policy Rule Collection Group"
  value       = azurerm_firewall_policy_rule_collection_group.main.id
}

output "name" {
  description = "The name of the created Firewall Policy Rule Collection Group"
  value       = azurerm_firewall_policy_rule_collection_group.main.name
}
