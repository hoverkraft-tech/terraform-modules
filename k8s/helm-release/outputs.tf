output "name" {
  description = "The name of the helm release"
  value       = helm_release.release.name
}

output "namespace" {
  description = "The namespace of the helm release"
  value       = helm_release.release.namespace
}
