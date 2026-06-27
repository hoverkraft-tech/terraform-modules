resource "azurerm_postgresql_flexible_server_database" "main" {
  for_each = { for key, database in var.databases : key => database }
  name       = each.value.name
  server_id  = var.server_id
  charset    = each.value.charset
  collation  = each.value.collation

  lifecycle {
    prevent_destroy = true
  }
}
