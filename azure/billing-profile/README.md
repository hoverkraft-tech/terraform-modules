# Azure Billing Profile

This module manages Azure Billing Profile resources.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_azapi"></a> [azapi](#requirement\_azapi) | >= 2.6.0, <3.0.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.13.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azapi"></a> [azapi](#provider\_azapi) | 2.6.1 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.13.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azapi_resource.billingProfile](https://registry.terraform.io/providers/Azure/azapi/latest/docs/resources/resource) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_account_id"></a> [billing\_account\_id](#input\_billing\_account\_id) | The ID of the Azure billing account under which the billing profile will be created | `string` | n/a | yes |
| <a name="input_billing_address"></a> [billing\_address](#input\_billing\_address) | The address line for the billing and shipping address | `string` | n/a | yes |
| <a name="input_billing_city"></a> [billing\_city](#input\_billing\_city) | The city for the billing and shipping address | `string` | n/a | yes |
| <a name="input_billing_company_name"></a> [billing\_company\_name](#input\_billing\_company\_name) | The company name for the billing and shipping address | `string` | n/a | yes |
| <a name="input_billing_country"></a> [billing\_country](#input\_billing\_country) | The country code for the billing and shipping address | `string` | n/a | yes |
| <a name="input_billing_firstname"></a> [billing\_firstname](#input\_billing\_firstname) | The firstname for the billing and shipping address | `string` | n/a | yes |
| <a name="input_billing_isValidAddress"></a> [billing\_isValidAddress](#input\_billing\_isValidAddress) | Whether the billing and shipping address is valid | `bool` | `true` | no |
| <a name="input_billing_lastname"></a> [billing\_lastname](#input\_billing\_lastname) | The lastname for the billing and shipping address | `string` | n/a | yes |
| <a name="input_billing_postalCode"></a> [billing\_postalCode](#input\_billing\_postalCode) | The postal code for the billing and shipping address | `string` | n/a | yes |
| <a name="input_billing_region"></a> [billing\_region](#input\_billing\_region) | The region/state for the billing and shipping address | `string` | n/a | yes |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this billing profile | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this billing profile | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to the billing profile | `string` | `"terragrunt-backend"` | no |
| <a name="input_payment_method_id"></a> [payment\_method\_id](#input\_payment\_method\_id) | The payment method ID to be used for billing profile creation | `string` | n/a | yes |
| <a name="input_sku_id"></a> [sku\_id](#input\_sku\_id) | The SKU ID for the Azure plan to enable in the billing profile | `string` | `"0001"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this billing profile | `map(any)` | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
