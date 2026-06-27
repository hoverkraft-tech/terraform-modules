resource "random_password" "admin" {
  length  = 32
  special = true
  # Exclude characters that may cause issues with MongoDB
  override_special = "!#$%&*()-_=+[]{}<>:?"

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_user_assigned_identity" "main" {
  name                = "id-${var.name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

resource "azurerm_mongo_cluster" "main" {
  name                   = var.name
  resource_group_name    = var.resource_group_name
  location               = var.location
  administrator_username = var.administrator_username
  administrator_password = random_password.admin.result
  shard_count            = var.shard_count
  compute_tier           = var.compute_tier
  high_availability_mode = var.high_availability_mode
  storage_size_in_gb     = var.storage_size_in_gb
  storage_type           = var.storage_type
  version                = var.mongodb_version
  public_network_access  = var.public_network_access
  authentication_methods = var.authentication_methods
  tags                   = local.interpolated_tags

  identity {
    type = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.main.id]
  }

  lifecycle {
    prevent_destroy = true
  }
}

