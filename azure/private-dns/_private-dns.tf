resource "azurerm_private_dns_zone" "main" {
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = local.interpolated_tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "link" {
  for_each = {
    for virtual_network_link in var.virtual_network_links : virtual_network_link.name => virtual_network_link
  }

  name                  = each.value.name
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.main.name
  virtual_network_id    = coalesce(each.value.virtual_network_id, null)
  registration_enabled  = false
}
