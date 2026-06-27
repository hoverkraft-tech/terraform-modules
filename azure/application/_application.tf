data "azuread_client_config" "current" {}

resource "azuread_application" "main" {
  display_name  = var.name
  owners        = [data.azuread_client_config.current.object_id]
  tags          = local.interpolated_tags
}
