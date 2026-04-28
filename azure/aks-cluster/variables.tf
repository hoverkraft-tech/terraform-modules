variable "customer" {
  description = "Customer applied to this AKS Cluster"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment applied to this AKS Cluster"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to this AKS Cluster"
  type        = map(any)
  default     = {}
}

# --- below are specific module variables ---

variable "name" {
  description = "Name applied to this AKS Cluster"
  type        = string
}

variable "location" {
  description = "Azure region where the AKS cluster will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the AKS cluster"
  type        = string
}

variable "sku_tier" {
  description = "The SKU Tier that should be used for this Kubernetes Cluster"
  type        = string
  default     = "Free"
}

variable "dns_prefix" {
  type        = string
  description = "DNS prefix for the cluster"
  default     = null
}


variable "dns_prefix_private_cluster" {
  type        = string
  description = "DNS prefix for the private cluster"
  default     = null
}

variable "private_dns_zone_id" {
  type        = string
  description = "ID of Private DNS Zone"
  default     = null
}

variable "kubernetes_version" {
  type        = string
  description = "Version of Kubernetes specified when creating the AKS managed cluster"
  default     = null
}

variable "private_cluster_enabled" {
  type        = bool
  description = "Exposed API server only on internal IP addresses"
  default     = false
}

variable "role_based_access_control_enabled" {
  type        = bool
  description = "Enable Kubernetes RBAC"
  default     = true
}

variable "network_plugin" {
  type        = string
  description = "Network plugin to use"
}

variable "network_policy" {
  type        = string
  description = "Network policy to use"
}

variable "network_plugin_mode" {
  type        = string
  description = "Specifies the network plugin mode used for building the Kubernetes network"
  default     = null
}

variable "network_data_plane" {
  type        = string
  description = "Specifies the data plane used for building the Kubernetes network. Possible values are azure and cilium"
  default     = "azure"
}

variable "pod_cidr" {
  type        = string
  description = " The CIDR to use for pod IP addresses. This field can only be set when network_plugin is set to kubenet or network_plugin_mode is set to overlay"
  default     = null
}

variable "outbound_type" {
  type        = string
  description = "The outbound (egress) routing method which should be used for this Kubernetes Cluster. Possible values are loadBalancer, userDefinedRouting, managedNATGateway, userAssignedNATGateway and none."
  default     = "loadBalancer"
}

variable "service_cidr" {
  type        = string
  description = "The Network Range used by the Kubernetes service."
  default     = null
}

variable "dns_service_ip" {
  type        = string
  description = "IP address within the Kubernetes service address range that will be used by cluster service discovery (kube-dns)"
  default     = null
}

variable "load_balancer_sku" {
  type        = string
  description = "Specifies the SKU of the Load Balancer used for this Kubernetes Cluster. Possible values are basic and standard"
  default     = "standard"
}

variable "node_pool_name" {
  type        = string
  description = ""
}

variable "node_count" {
  type        = number
  description = ""
  default     = 3
}

variable "max_pods" {
  type        = number
  description = "The maximum number of pods that can run on a node in the node pool"
  default     = 250
}


variable "vm_size" {
  type        = string
  description = ""
  default     = "Standard_D2_v4"
}

variable "os_disk_size_gb" {
  type        = number
  description = "The size of the OS Disk which should be used for each agent in the Node Pool"
  default     = null
}

variable "os_disk_type" {
  description = "The type of disk for the OS (Managed, Ephemeral)"
  type        = string
  default     = "Managed"
  validation {
    condition     = contains(["Managed", "Ephemeral"], var.os_disk_type)
    error_message = "os_disk_type must be either 'Managed' or 'Ephemeral'."
  }
}

variable "auto_scaling_enabled" {
  type        = bool
  description = ""
  default     = false
}
variable "min_count" {
  type        = number
  description = ""
  default     = null
}
variable "max_count" {
  type        = number
  description = ""
  default     = null
}
variable "host_encryption_enabled" {
  type        = bool
  description = ""
  default     = false
}
variable "node_public_ip_enabled" {
  type        = bool
  description = ""
  default     = false
}
variable "vnet_subnet_id" {
  type        = string
  description = ""
  default     = null
}

variable "drain_timeout_in_minutes" {
  type        = number
  description = "The amount of time in minutes to wait on eviction of pods and graceful termination per node."
  default     = 30
}

variable "max_surge" {
  type        = string
  description = "The maximum number or percentage of nodes which will be added to the Node Pool size during an upgrade"
  default     = "33%"
}

variable "node_soak_duration_in_minutes" {
  type        = number
  description = ""
  default     = 10
}

variable "azure_rbac_enabled" {
  description = "Enable Azure RBAC for Kubernetes authorization"
  type        = bool
  default     = false
}

variable "zones" {
  description = "A list of Availability Zones across which the Node Pool should be spread"
  type        = list(string)
  default     = null
}

variable "admin_group_object_ids" {
  description = "List of Azure AD group object IDs that should have admin access to the AKS cluster"
  type        = list(string)
  default     = []
}

variable "os_sku" {
  description = "The OS SKU for the default node pool (e.g., Ubuntu, AzureLinux, Windows2019, Windows2022)"
  type        = string
  default     = "Ubuntu"
}

variable "oidc_issuer_enabled" {
  description = "Enable OIDC issuer for workload identity federation"
  type        = bool
  default     = false
}

variable "workload_identity_enabled" {
  description = "Enable workload identity for the AKS cluster"
  type        = bool
  default     = false
}

variable "acr_id" {
  description = "Azure Container Registry ID to grant AcrPull access to the AKS cluster"
  type        = string
  default     = null
}
