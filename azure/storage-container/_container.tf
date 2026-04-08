resource "azurerm_storage_container" "main" {
  #checkov:skip=CKV2_AZURE_21:FIXME
  name                  = var.name
  storage_account_id    = var.storage_account_id
  container_access_type = var.access_type
}
