resource "azuread_group" "main" {
  display_name            = var.name
  description             = var.description
  owners                  = var.owners
  prevent_duplicate_names = true
  security_enabled        = var.security_enabled
  theme                   = var.theme

  members = var.members

  lifecycle {
    ignore_changes = [
      members,
      owners
    ]
  }
}
