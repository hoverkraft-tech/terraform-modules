output "id" {
  description = "The ID of the created AKS Cluster"
  value       = azurerm_kubernetes_cluster.aks.id
}

output "kube_config" {
  description = "Configuration kubectl"
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive   = true
}

output "identity" {
  description = "Identity block"
  value       = azurerm_kubernetes_cluster.aks.identity
}

