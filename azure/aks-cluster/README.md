# Azure AKS Cluster Module

This module manages Azure AKS Cluster resources.

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
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.54.0 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.13.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_kubernetes_cluster.aks](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster) | resource |
| [azurerm_role_assignment.aks_acr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.aks_dns_contributor](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.aks_network_contributor](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_user_assigned_identity.aks_identity](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity) | resource |
| [time_static.last_update](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acr_id"></a> [acr\_id](#input\_acr\_id) | Azure Container Registry ID to grant AcrPull access to the AKS cluster | `string` | `null` | no |
| <a name="input_admin_group_object_ids"></a> [admin\_group\_object\_ids](#input\_admin\_group\_object\_ids) | List of Azure AD group object IDs that should have admin access to the AKS cluster | `list(string)` | `[]` | no |
| <a name="input_auto_scaling_enabled"></a> [auto\_scaling\_enabled](#input\_auto\_scaling\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_azure_rbac_enabled"></a> [azure\_rbac\_enabled](#input\_azure\_rbac\_enabled) | Enable Azure RBAC for Kubernetes authorization | `bool` | `false` | no |
| <a name="input_customer"></a> [customer](#input\_customer) | Customer applied to this AKS Cluster | `string` | `""` | no |
| <a name="input_dns_prefix"></a> [dns\_prefix](#input\_dns\_prefix) | DNS prefix for the cluster | `string` | `null` | no |
| <a name="input_dns_prefix_private_cluster"></a> [dns\_prefix\_private\_cluster](#input\_dns\_prefix\_private\_cluster) | DNS prefix for the private cluster | `string` | `null` | no |
| <a name="input_dns_service_ip"></a> [dns\_service\_ip](#input\_dns\_service\_ip) | IP address within the Kubernetes service address range that will be used by cluster service discovery (kube-dns) | `string` | `null` | no |
| <a name="input_drain_timeout_in_minutes"></a> [drain\_timeout\_in\_minutes](#input\_drain\_timeout\_in\_minutes) | The amount of time in minutes to wait on eviction of pods and graceful termination per node. | `number` | `30` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment applied to this AKS Cluster | `string` | `""` | no |
| <a name="input_host_encryption_enabled"></a> [host\_encryption\_enabled](#input\_host\_encryption\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | Version of Kubernetes specified when creating the AKS managed cluster | `string` | `null` | no |
| <a name="input_load_balancer_sku"></a> [load\_balancer\_sku](#input\_load\_balancer\_sku) | Specifies the SKU of the Load Balancer used for this Kubernetes Cluster. Possible values are basic and standard | `string` | `"standard"` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region where the AKS cluster will be created | `string` | n/a | yes |
| <a name="input_max_count"></a> [max\_count](#input\_max\_count) | n/a | `number` | `null` | no |
| <a name="input_max_pods"></a> [max\_pods](#input\_max\_pods) | The maximum number of pods that can run on a node in the node pool | `number` | `250` | no |
| <a name="input_max_surge"></a> [max\_surge](#input\_max\_surge) | The maximum number or percentage of nodes which will be added to the Node Pool size during an upgrade | `string` | `"33%"` | no |
| <a name="input_min_count"></a> [min\_count](#input\_min\_count) | n/a | `number` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name applied to this AKS Cluster | `string` | n/a | yes |
| <a name="input_network_data_plane"></a> [network\_data\_plane](#input\_network\_data\_plane) | Specifies the data plane used for building the Kubernetes network. Possible values are azure and cilium | `string` | `"azure"` | no |
| <a name="input_network_plugin"></a> [network\_plugin](#input\_network\_plugin) | Network plugin to use | `string` | n/a | yes |
| <a name="input_network_plugin_mode"></a> [network\_plugin\_mode](#input\_network\_plugin\_mode) | Specifies the network plugin mode used for building the Kubernetes network | `string` | `null` | no |
| <a name="input_network_policy"></a> [network\_policy](#input\_network\_policy) | Network policy to use | `string` | n/a | yes |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | n/a | `number` | `3` | no |
| <a name="input_node_pool_name"></a> [node\_pool\_name](#input\_node\_pool\_name) | n/a | `string` | n/a | yes |
| <a name="input_node_public_ip_enabled"></a> [node\_public\_ip\_enabled](#input\_node\_public\_ip\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_node_soak_duration_in_minutes"></a> [node\_soak\_duration\_in\_minutes](#input\_node\_soak\_duration\_in\_minutes) | n/a | `number` | `10` | no |
| <a name="input_oidc_issuer_enabled"></a> [oidc\_issuer\_enabled](#input\_oidc\_issuer\_enabled) | Enable OIDC issuer for workload identity federation | `bool` | `false` | no |
| <a name="input_os_disk_size_gb"></a> [os\_disk\_size\_gb](#input\_os\_disk\_size\_gb) | The size of the OS Disk which should be used for each agent in the Node Pool | `number` | `null` | no |
| <a name="input_os_disk_type"></a> [os\_disk\_type](#input\_os\_disk\_type) | The type of disk for the OS (Managed, Ephemeral) | `string` | `"Managed"` | no |
| <a name="input_os_sku"></a> [os\_sku](#input\_os\_sku) | The OS SKU for the default node pool (e.g., Ubuntu, AzureLinux, Windows2019, Windows2022) | `string` | `"Ubuntu"` | no |
| <a name="input_outbound_type"></a> [outbound\_type](#input\_outbound\_type) | The outbound (egress) routing method which should be used for this Kubernetes Cluster. Possible values are loadBalancer, userDefinedRouting, managedNATGateway, userAssignedNATGateway and none. | `string` | `"loadBalancer"` | no |
| <a name="input_pod_cidr"></a> [pod\_cidr](#input\_pod\_cidr) | The CIDR to use for pod IP addresses. This field can only be set when network\_plugin is set to kubenet or network\_plugin\_mode is set to overlay | `string` | `null` | no |
| <a name="input_private_cluster_enabled"></a> [private\_cluster\_enabled](#input\_private\_cluster\_enabled) | Exposed API server only on internal IP addresses | `bool` | `false` | no |
| <a name="input_private_dns_zone_id"></a> [private\_dns\_zone\_id](#input\_private\_dns\_zone\_id) | ID of Private DNS Zone | `string` | `null` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the AKS cluster | `string` | n/a | yes |
| <a name="input_role_based_access_control_enabled"></a> [role\_based\_access\_control\_enabled](#input\_role\_based\_access\_control\_enabled) | Enable Kubernetes RBAC | `bool` | `true` | no |
| <a name="input_service_cidr"></a> [service\_cidr](#input\_service\_cidr) | The Network Range used by the Kubernetes service. | `string` | `null` | no |
| <a name="input_sku_tier"></a> [sku\_tier](#input\_sku\_tier) | The SKU Tier that should be used for this Kubernetes Cluster | `string` | `"Free"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to this AKS Cluster | `map(any)` | `{}` | no |
| <a name="input_vm_size"></a> [vm\_size](#input\_vm\_size) | n/a | `string` | `"Standard_D2_v4"` | no |
| <a name="input_vnet_subnet_id"></a> [vnet\_subnet\_id](#input\_vnet\_subnet\_id) | n/a | `string` | `null` | no |
| <a name="input_workload_identity_enabled"></a> [workload\_identity\_enabled](#input\_workload\_identity\_enabled) | Enable workload identity for the AKS cluster | `bool` | `false` | no |
| <a name="input_zones"></a> [zones](#input\_zones) | A list of Availability Zones across which the Node Pool should be spread | `list(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the created AKS Cluster |
| <a name="output_identity"></a> [identity](#output\_identity) | Identity block |
| <a name="output_kube_config"></a> [kube\_config](#output\_kube\_config) | Configuration kubectl |
<!-- END_TF_DOCS -->
