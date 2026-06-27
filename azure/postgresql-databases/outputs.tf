output "ids" {
  description = "List of IDs of the created PostgreSQL databases"
  value = [
    for database in azurerm_postgresql_flexible_server_database.main : database.id
  ]
}

