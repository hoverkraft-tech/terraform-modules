output "id" {
  description = "The ID of the helm release"
  value       = helm_release.release.id
}

output "name" {
  description = "The name of the helm release"
  value       = helm_release.release.name
}

output "namespace" {
  description = "The namespace of the helm release"
  value       = helm_release.release.namespace
}

output "revision" {
  description = "The revision of the helm release"
  value       = helm_release.release.revision
}
