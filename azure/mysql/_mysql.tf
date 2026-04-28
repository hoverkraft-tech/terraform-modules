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

resource "azurerm_mysql_flexible_server" "main" {
  name                   = var.name
  resource_group_name    = var.resource_group_name
  location               = var.location
  version                = var.mysql_version
  sku_name               = var.sku_name

  administrator_login    = var.administrator_login
  administrator_password = var.administrator_password != null ? var.administrator_password : random_password.admin.result

  storage {
    size_gb             = var.size_gb
    auto_grow_enabled   = var.auto_grow_enabled
    io_scaling_enabled  = var.io_scaling_enabled
    iops                = var.iops
    log_on_disk_enabled = var.log_on_disk_enabled
  }
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

  public_network_access = var.public_network_access_enabled ? "Enabled" : "Disabled"

  identity {
    type = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.main.id]
  }
}

resource "azurerm_mysql_flexible_server_configuration" "main" {
  for_each  = { for config in var.server_configurations : config.name => config }

  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_flexible_server.main.name
  name                = each.value.name
  value               = each.value.value
}

resource "azurerm_mysql_flexible_database" "main" {
  for_each = { for db in var.databases : db.name => db }

  name                = each.value.name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_flexible_server.main.name
  charset             = each.value.charset
  collation           = each.value.collation
}

