resource "azurerm_firewall" "main" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = var.sku_name
  sku_tier            = var.sku_tier
  firewall_policy_id  = var.firewall_policy_id
  zones               = var.zones

  ip_configuration {
    name                 = var.ip_configuration_name
    subnet_id            = var.subnet_id
    public_ip_address_id = var.public_ip_address_id
  }

  management_ip_configuration {
    name                 = var.management_ip_name
    subnet_id            = var.management_ip_subnet
    public_ip_address_id = var.management_ip_id
  }

  tags = local.interpolated_tags
}
