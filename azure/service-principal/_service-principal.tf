data "azuread_client_config" "current" {}

resource "azuread_application" "application" {
  display_name = var.name
  description  = var.description
  owners       = [data.azuread_client_config.current.object_id]
  tags = local.interpolated_tags
}

resource "azuread_service_principal" "sp" {
  client_id   = azuread_application.application.client_id
  owners      = [data.azuread_client_config.current.object_id]
  tags = local.interpolated_tags
}

resource "azuread_service_principal_password" "sp_password" {
  display_name         = var.name
  service_principal_id = azuread_service_principal.sp.id
  start_date           = var.password_start_date
  end_date             = var.password_end_date
  end_date_relative    = var.password_end_date_relative
}
