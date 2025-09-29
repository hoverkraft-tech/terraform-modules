output "id" {
  description = "The ID of the Kubernetes namespace"
  value       = kubernetes_namespace.ns.id
}

output "name" {
  description = "The name of the Kubernetes namespace"
  value       = kubernetes_namespace.ns.metadata[0].name
}
