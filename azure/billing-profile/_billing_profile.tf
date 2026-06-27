# data "azapi_resource" "payment_method" {
#   name      = "j6cruQIAAAABAACA"
#   parent_id = "/"
#   type      = "Microsoft.Billing/paymentMethods@2021-10-01"
# }

resource "azapi_resource" "billingProfile" {
  name = var.name

  type      = "Microsoft.Billing/billingAccounts/billingProfiles@2024-04-01"
  parent_id = "/providers/Microsoft.Billing/billingAccounts/${var.billing_account_id}"

  body = {
    properties = {
      billTo = {
        firstName      = var.billing_firstname
        lastName       = var.billing_lastname
        addressLine1   = var.billing_address
        city           = var.billing_city
        companyName    = var.billing_company_name
        country        = var.billing_country
        postalCode     = var.billing_postalCode
        region         = var.billing_region
        isValidAddress = var.billing_isValidAddress
      }
      displayName = var.name
      enabledAzurePlans = [
        {
          skuId = var.sku_id
        }
      ]
      shipTo = {
        addressLine1   = var.billing_address
        city           = var.billing_city
        companyName    = var.billing_company_name
        country        = var.billing_country
        postalCode     = var.billing_postalCode
        region         = var.billing_region
        isValidAddress = var.billing_isValidAddress
      }
      tags = local.interpolated_tags
    }
  }

  create_headers = {
    "X-Ms-Payment-Method-Id" = var.payment_method_id
    // "X-Ms-Payment-Sca-Id"    = var.payment_sca_id
  }

  schema_validation_enabled = false
  response_export_values    = ["*"]
}
