resource "azurerm_route_table" "main" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags = local.interpolated_tags

  dynamic "route" {
    for_each = var.routes
    content {
      name                   = route.value.name
      address_prefix         = route.value.address_prefix
      next_hop_type          = route.value.next_hop_type
      next_hop_in_ip_address = try(route.value.next_hop_in_ip_address, null)
    }
  }
}

resource "azurerm_subnet_route_table_association" "main" {
  for_each       = toset(var.subnet_ids)
  subnet_id      = each.value
  route_table_id = azurerm_route_table.main.id
}
