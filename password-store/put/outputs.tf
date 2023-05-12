output "body" {
  description = "The body of the secret"
  value       = resource.pass_password.secret.body
}

output "full" {
  description = "Entire secret contents"
  value       = resource.pass_password.secret.full
}
