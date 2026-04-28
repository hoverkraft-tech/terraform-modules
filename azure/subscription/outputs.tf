output "subscription_id" {
  description = "The ID of the created subscription"
  value       = azurerm_subscription.main.subscription_id
}

output "tenant_id" {
  description = "The tenant ID of the subscription"
  value       = azurerm_subscription.main.tenant_id
}
