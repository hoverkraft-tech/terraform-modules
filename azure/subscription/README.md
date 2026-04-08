# Azure Subscription Module

This module manages Azure Subscription resources.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 4.40.0, <5.0.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.13.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.40.0 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.13.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_management_group_subscription_association.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_subscription_association) | resource |
| [azurerm_subscription.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subscription) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |
| [azurerm_billing_mca_account_scope.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/billing_mca_account_scope) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_account_name"></a> [billing\_account\_name](#input\_billing\_account\_name) | The billing account name used for the new subscription | `string` | n/a | yes |
| <a name="input_billing_profile_name"></a> [billing\_profile\_name](#input\_billing\_profile\_name) | The billing profile name used for the new subscription | `string` | n/a | yes |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this subscription | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this subscription | `string` | `""` | no |
| <a name="input_invoice_section_name"></a> [invoice\_section\_name](#input\_invoice\_section\_name) | The invoice section name used for the new subscription | `string` | n/a | yes |
| <a name="input_management_group_id"></a> [management\_group\_id](#input\_management\_group\_id) | The management group ID to associate with the subscription | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this subscription | `string` | `"mysubscription"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this subscription | `map(any)` | `{}` | no |
| <a name="input_workload"></a> [workload](#input\_workload) | The workload type for the subscription | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subscription_id"></a> [subscription\_id](#output\_subscription\_id) | The ID of the created subscription |
| <a name="output_tenant_id"></a> [tenant\_id](#output\_tenant\_id) | The tenant ID of the subscription |
<!-- END_TF_DOCS -->
