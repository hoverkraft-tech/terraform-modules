output "arn" {
  description = "The ARN of the OIDC provider"
  value       = aws_iam_openid_connect_provider.oidc_provider.arn
}

output "url" {
  description = "The URL of the OIDC provider"
  value       = aws_iam_openid_connect_provider.oidc_provider.url
}
