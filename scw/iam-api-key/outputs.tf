output "access_key" {
  description = "Access key of the api key"
  value       = scaleway_iam_api_key.api_key.access_key
}

output "secret_key" {
  description = "Secret key of the api key"
  value       = scaleway_iam_api_key.api_key.secret_key
}

output "id" {
  description = "ID of the api key"
  value       = scaleway_iam_api_key.api_key.id
}

output "creation_ip" {
  description = "Creation IP of the api key"
  value       = scaleway_iam_api_key.api_key.creation_ip
}
