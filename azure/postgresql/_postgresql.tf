resource "random_password" "admin" {
  length  = 32
  special = true
  # Exclure les caractères qui peuvent causer des problèmes avec PostgreSQL
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "azurerm_user_assigned_identity" "main" {
  name                = "id-${var.name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

resource "azurerm_postgresql_flexible_server" "main" {
  name                   = var.name
  resource_group_name    = var.resource_group_name
  location               = var.location
  version                = var.postgresql_version

  sku_name               = var.sku_name

  administrator_login    = var.administrator_login
  administrator_password = var.administrator_password != null ? var.administrator_password : random_password.admin.result

  storage_mb             = var.storage_mb
  storage_tier           = var.storage_tier
  backup_retention_days  = var.backup_retention_days
  geo_redundant_backup_enabled = var.geo_redundant_backup_enabled

  zone                   = var.zone

  create_mode            = var.create_mode

  dynamic "high_availability" {
    for_each = var.high_availability_enabled ? [1] : []
    content {
      mode                      = var.high_availability_mode
      standby_availability_zone = var.high_availability_standby_zone
    }
  }

  delegated_subnet_id = var.public_network_access_enabled ? null : var.subnet_id
  private_dns_zone_id = var.public_network_access_enabled ? null : var.private_dns_zone_id

  public_network_access_enabled = var.public_network_access_enabled

  identity {
    type = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.main.id]
  }

  dynamic "authentication" {
    for_each = var.active_directory_auth_enabled ? [1] : [0]
    content {
      active_directory_auth_enabled = true
      password_auth_enabled         = true
      tenant_id                     = var.tenant_id
    }
  }
}

resource "azurerm_postgresql_flexible_server_active_directory_administrator" "main" {
  count               = var.active_directory_auth_enabled ? 1 : 0
  server_name         = azurerm_postgresql_flexible_server.main.name
  resource_group_name = var.resource_group_name
  tenant_id           = var.tenant_id
  object_id           = var.entra_admin_object_id
  principal_name      = var.entra_admin_name
  principal_type      = var.entra_admin_type
}

resource "azurerm_postgresql_flexible_server_configuration" "main" {
  for_each  = { for config in var.server_configurations : config.name => config }
  
  server_id = azurerm_postgresql_flexible_server.main.id
  name      = each.value.name
  value     = each.value.value
}

