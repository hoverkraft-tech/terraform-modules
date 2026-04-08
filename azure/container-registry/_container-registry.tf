resource "azurerm_user_assigned_identity" "acr_identity" {
  name                = var.identity_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

resource "azurerm_container_registry" "acr" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku

  admin_enabled                 = var.admin_enabled
  public_network_access_enabled = var.public_network_access_enabled
  retention_policy_in_days      = var.retention_policy_in_days

  identity {
    type         = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.acr_identity.id]
  }

  tags = local.interpolated_tags
}

resource "azurerm_role_assignment" "acr_role_assignments" {
  for_each = { for key, role_assignment in var.role_assignments : key => role_assignment }

  scope                = azurerm_container_registry.acr.id
  role_definition_name = each.value.role_definition_name
  principal_id         = each.value.principal_id
  description          = lookup(each.value, "description", null)
}
