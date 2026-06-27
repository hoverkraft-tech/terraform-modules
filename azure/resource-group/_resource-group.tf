resource "azurerm_resource_group" "main" {
  name       = var.name
  location   = var.location
  tags       = local.interpolated_tags
  managed_by = "terraform"
}
