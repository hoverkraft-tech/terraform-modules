resource "azurerm_key_vault" "main" {
  name                          = var.name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  tenant_id                     = var.tenant_id
  sku_name                      = var.sku_name
  purge_protection_enabled      = var.purge_protection_enabled
  soft_delete_retention_days    = var.soft_delete_retention_days
  enabled_for_disk_encryption   = var.enabled_for_disk_encryption
  public_network_access_enabled = var.public_network_access_enabled
  rbac_authorization_enabled    = var.rbac_authorization_enabled
  tags = local.interpolated_tags
}

resource "azurerm_role_assignment" "main" {
  for_each = { for key, role_assignment in var.role_assignments : key => role_assignment }

  scope                = azurerm_key_vault.main.id
  role_definition_name = each.value.role_definition_name
  principal_id         = each.value.principal_id
  description          = lookup(each.value, "description", null)
}

resource "azurerm_private_endpoint" "main" {
  count = var.public_network_access_enabled == false ? 1 : 0
  
  name                = "pep-${var.name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = "psc-${var.name}"
    private_connection_resource_id = azurerm_key_vault.main.id
    is_manual_connection           = false
    subresource_names              = ["vault"]
  }

  private_dns_zone_group {
    name                 = "default"
    private_dns_zone_ids = [var.private_dns_zone_id]
  }
}
