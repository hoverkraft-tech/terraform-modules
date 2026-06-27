data "azurerm_billing_mca_account_scope" "main" {
  billing_account_name = var.billing_account_name
  billing_profile_name = var.billing_profile_name
  invoice_section_name = var.invoice_section_name
}

resource "azurerm_subscription" "main" {
  subscription_name = var.name
  billing_scope_id  = data.azurerm_billing_mca_account_scope.main.id
  workload          = var.workload

  tags = local.interpolated_tags
}

resource "azurerm_management_group_subscription_association" "main" {
  count               = var.management_group_id != null ? 1 : 0
  management_group_id = var.management_group_id
  subscription_id     = "/subscriptions/${azurerm_subscription.main.subscription_id}"
}
