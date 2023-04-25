output "id" {
  description = "The ID of the bucket"
  value       = scaleway_object_bucket.bucket.id
}

output "endpoint" {
  description = "The endpoint of the bucket"
  value       = scaleway_object_bucket.bucket.endpoint
}

output "region" {
  description = "The region of the bucket"
  value       = scaleway_object_bucket.bucket.region
}
