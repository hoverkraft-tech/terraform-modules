# Azure VPN Gateway Module

This module manages Azure VPN Gateway resources.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | >= 3.5.0, <4.0.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.13.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_time"></a> [time](#provider\_time) | ~> 0.13.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_public_ip.vpn](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_virtual_network_gateway.vpn](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_gateway) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aad_audience"></a> [aad\_audience](#input\_aad\_audience) | The client id of the Azure VPN application. Must be 41b23e61-6c1e-4545-b367-cd054e0ed4b4 for Azure VPN | `string` | `null` | no |
| <a name="input_aad_issuer"></a> [aad\_issuer](#input\_aad\_issuer) | The STS url for your tenant. Must be in this format: https://sts.windows.net/{TenantID}/ | `string` | `null` | no |
| <a name="input_aad_tenant"></a> [aad\_tenant](#input\_aad\_tenant) | AzureAD Tenant URL. Must be in this format: https://login.microsoftonline.com/{TenantID} | `string` | `null` | no |
| <a name="input_address_space"></a> [address\_space](#input\_address\_space) | TDefines the allocation method of the IP address. Possible values are Static or Dynamic. | `list(string)` | n/a | yes |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this service principal | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this service principal | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region where the NAT Gateway will be created | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this service principal | `string` | `""` | no |
| <a name="input_public_cert_data"></a> [public\_cert\_data](#input\_public\_cert\_data) | The public certificate of the root certificate authority. The certificate must be provided in Base-64 encoded X.509 format (PEM). In particular, this argument must not include the -----BEGIN CERTIFICATE----- or -----END CERTIFICATE----- markers, nor any newlines. | `string` | `null` | no |
| <a name="input_public_ip_allocation_method"></a> [public\_ip\_allocation\_method](#input\_public\_ip\_allocation\_method) | TDefines the allocation method of the IP address. Possible values are Static or Dynamic. | `string` | `"Static"` | no |
| <a name="input_public_ip_name"></a> [public\_ip\_name](#input\_public\_ip\_name) | The name of the associated Public IP | `string` | n/a | yes |
| <a name="input_public_ip_zones"></a> [public\_ip\_zones](#input\_public\_ip\_zones) | A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new NAT Gateway to be created | `list(any)` | `null` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the NAT Gateway | `string` | n/a | yes |
| <a name="input_root_certificate_name"></a> [root\_certificate\_name](#input\_root\_certificate\_name) | Name of the root certificate | `string` | `null` | no |
| <a name="input_sku"></a> [sku](#input\_sku) | The SKU which should be used | `string` | `"Basic"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet ID to which the VPN gateway will be attached | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this service principal | `map(any)` | `{}` | no |
| <a name="input_vpn_auth_types"></a> [vpn\_auth\_types](#input\_vpn\_auth\_types) | List of the vpn authentication types for the virtual network gateway. The supported values are AAD, Radius and Certificate | `list(string)` | `[]` | no |
| <a name="input_vpn_client_protocols"></a> [vpn\_client\_protocols](#input\_vpn\_client\_protocols) | List of the protocols supported by the vpn client | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created VPN Gateway |
<!-- END_TF_DOCS -->
