resource "azurerm_public_ip" "main" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.allocation_method
  sku                 = var.sku
  sku_tier            = var.sku_tier
  zones               = var.zones

  tags = local.interpolated_tags
}
