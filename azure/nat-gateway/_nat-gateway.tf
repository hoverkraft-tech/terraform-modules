resource "azurerm_public_ip" "main" {
  name                = "pip-${var.name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.public_ip_allocation_method
  sku                 = var.public_ip_sku
  zones               = [1, 2, 3]
}

resource "azurerm_nat_gateway" "main" {
  name                    = var.name
  location                = var.location
  resource_group_name     = var.resource_group_name
  sku_name                = var.sku_name
  idle_timeout_in_minutes = var.idle_timeout_in_minutes
  zones                   = var.zones
  tags = local.interpolated_tags
}

resource "azurerm_subnet_nat_gateway_association" "main" {
  for_each       = toset(var.subnet_ids)
  subnet_id      = each.value
  nat_gateway_id = azurerm_nat_gateway.main.id
}

resource "azurerm_nat_gateway_public_ip_association" "main" {
  nat_gateway_id       = azurerm_nat_gateway.main.id
  public_ip_address_id = azurerm_public_ip.main.id
}
