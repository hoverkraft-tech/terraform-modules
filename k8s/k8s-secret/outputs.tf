output "id" {
  description = "The ID of the Kubernetes secret"
  value       = kubernetes_secret.secret.id
}
