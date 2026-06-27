resource "azurerm_subnet" "main" {
  name                            = var.name
  resource_group_name             = var.resource_group_name
  virtual_network_name            = var.virtual_network_name
  address_prefixes                = var.address_prefixes
  default_outbound_access_enabled = var.default_outbound_access_enabled

  dynamic "delegation" {
    for_each = var.delegations
    content {
      name = delegation.value.name

      service_delegation {
        name    = delegation.value.service_name
        actions = delegation.value.actions
      }
    }
  }
}
