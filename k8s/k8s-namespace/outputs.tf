output "id" {
  description = "The ID of the Kubernetes namespace"
  value       = kubernetes_namespace.ns.id
}
