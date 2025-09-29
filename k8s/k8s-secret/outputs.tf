output "id" {
  description = "The ID of the Kubernetes secret"
  value       = kubernetes_secret.secret.id
}

output "name" {
  description = "The name of the Kubernetes secret"
  value       = kubernetes_secret.secret.metadata[0].name
}

output "namespace" {
  description = "The namespace of the Kubernetes secret"
  value       = kubernetes_secret.secret.metadata[0].namespace
}
