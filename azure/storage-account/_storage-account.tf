resource "azurerm_storage_account" "main" {
  #checkov:skip=CKV_AZURE_33:FIXME
  #checkov:skip=CKV2_AZURE_1:FIXME
  #checkov:skip=CKV2_AZURE_18:FIXME
  #checkov:skip=CKV2_AZURE_33:FIXME
  #checkov:skip=CKV2_AZURE_38:FIXME
  #checkov:skip=CKV_AZURE_35:the default is right (null) checkov is missing the fact that this an optional block
  #checkov:skip=CKV2_AZURE_40:FIXME
  #checkov:skip=CKV2_AZURE_41:FIXME

  account_replication_type        = var.account_replication_type
  account_kind                    = var.account_kind
  account_tier                    = var.account_tier
  allow_nested_items_to_be_public = var.allow_nested_items_to_be_public
  default_to_oauth_authentication = var.default_to_oauth_authentication
  location                        = var.location
  min_tls_version                 = "TLS1_2"
  name                            = var.name
  public_network_access_enabled   = var.public_network_access_enabled
  resource_group_name             = var.resource_group_name
  is_hns_enabled                  = var.hns_enabled

  blob_properties {
    delete_retention_policy {
      days = 7
    }
  }

  dynamic "network_rules" {
    for_each = var.network_rules
    content {
      default_action             = try(network_rules.value.default_action, "Deny")
      ip_rules                   = try(network_rules.value.ip_rules, null)
      virtual_network_subnet_ids = try(network_rules.value.virtual_network_subnet_ids, null)
    }
  }

  tags = local.interpolated_tags
}

resource "azurerm_role_assignment" "main" {
  for_each = { for key, role_assignment in var.role_assignments : key => role_assignment }

  scope                = azurerm_storage_account.main.id
  role_definition_name = each.value.role_definition_name
  principal_id         = each.value.principal_id
  description          = lookup(each.value, "description", null)
}

resource "azurerm_storage_container" "main" {
  for_each = { for key, storage_container in var.storage_containers : key => storage_container }

  name                  = each.value.name
  storage_account_id    = azurerm_storage_account.main.id
  container_access_type = each.value.container_access_type
}

resource "azurerm_private_endpoint" "main" {
  count = var.public_network_access_enabled == false ? 1 : 0

  name                = "pep-${var.name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = "psc-${var.name}"
    private_connection_resource_id = azurerm_storage_account.main.id
    is_manual_connection           = false
    subresource_names              = ["blob"]
  }

  private_dns_zone_group {
    name                 = "default"
    private_dns_zone_ids = [var.private_dns_zone_id]
  }
}
