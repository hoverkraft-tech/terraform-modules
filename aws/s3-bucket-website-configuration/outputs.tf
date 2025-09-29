output "website_endpoint" {
  description = "The website endpoint URL"
  value       = aws_s3_bucket_website_configuration.website-config.website_endpoint
}

output "website_domain" {
  description = "The domain name of the website endpoint"
  value       = aws_s3_bucket_website_configuration.website-config.website_domain
}
