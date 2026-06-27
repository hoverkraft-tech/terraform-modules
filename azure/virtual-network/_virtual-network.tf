resource "azurerm_virtual_network" "main" {
  #checkov:skip=CKV_AZURE_183:it's up to the user to provides local dns addresses
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = try(var.address_space, null)
  dns_servers         = var.dns_servers

  tags = local.interpolated_tags
}

resource "azurerm_role_assignment" "main" {
  for_each = { for key, role_assignment in var.role_assignments : key => role_assignment }

  scope                = azurerm_virtual_network.main.id
  role_definition_name = each.value.role_definition_name
  principal_id         = each.value.principal_id
  description          = lookup(each.value, "description", null)
}
