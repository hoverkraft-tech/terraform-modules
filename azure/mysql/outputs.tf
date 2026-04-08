output "id" {
  description = "The ID of the created MySQL flexible server"
  value       = azurerm_mysql_flexible_server.main.id
}

output "name" {
  description = "The name of the created MySQL flexible server"
  value       = azurerm_mysql_flexible_server.main.name
}

output "administrator_login" {
  description = "The administrator login name for the MySQL flexible server"
  value       = azurerm_mysql_flexible_server.main.administrator_login

}

output "admin_password" {
  description = "The generated administrator password"
  value       = random_password.admin.result
  sensitive   = true
}
