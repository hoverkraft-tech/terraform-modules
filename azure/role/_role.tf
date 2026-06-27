resource "azurerm_role_definition" "main" {
  name        = var.name
  scope       = var.scope
  description = var.description

  permissions {
    actions          = var.actions
    data_actions     = var.data_actions
    not_actions      = var.not_actions
    not_data_actions = var.not_data_actions
  }
  assignable_scopes = var.assignable_scopes
}
