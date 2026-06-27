resource "azurerm_firewall_policy" "main" {
  name                     = var.name
  location                 = var.location
  resource_group_name      = var.resource_group_name
  sku                      = var.sku
  threat_intelligence_mode = var.sku == "Basic" ? null : var.threat_intelligence_mode
  base_policy_id           = var.base_policy_id

  tags = local.interpolated_tags
}
