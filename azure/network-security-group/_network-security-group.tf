resource "azurerm_network_security_group" "main" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = local.interpolated_tags

  dynamic "security_rule" {
    for_each = var.security_rules
    content {
      name                       = security_rule.value.name
      description                = try(security_rule.value.description, null)
      priority                   = security_rule.value.priority
      direction                  = try(security_rule.value.direction, "Inbound")
      access                     = try(security_rule.value.access, "Allow")
      protocol                   = try(security_rule.value.protocol, "*")
      source_port_range          = try(security_rule.value.source_port_range, "*")
      destination_port_range     = try(security_rule.value.destination_port_range, "*")
      source_address_prefix      = try(security_rule.value.source_address_prefix, "*")
      destination_address_prefix = try(security_rule.value.destination_address_prefix, "*")
    }
  }
}
