output "id" {
  description = "The ID of the MongoDB cluster"
  value       = azurerm_mongo_cluster.main.id
}

output "name" {
  description = "The name of the MongoDB cluster"
  value       = azurerm_mongo_cluster.main.name
}

output "administrator_username" {
  description = "The administrator username for the MongoDB cluster"
  value       = azurerm_mongo_cluster.main.administrator_username
}
output "administrator_password" {
  description = "The administrator password for the MongoDB cluster"
  value       = random_password.admin.result
  sensitive   = true
}
