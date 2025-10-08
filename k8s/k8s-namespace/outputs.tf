output "name" {
  description = "The name of the Kubernetes namespace"
  value       = var.ignore_metadata_changes ? kubernetes_namespace.ns_ignore_changes[0].metadata[0].name : kubernetes_namespace.ns[0].metadata[0].name
}
