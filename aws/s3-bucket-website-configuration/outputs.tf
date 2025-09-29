output "id" {
  description = "The ID of the S3 bucket website configuration"
  value       = aws_s3_bucket_website_configuration.website-config.id
}

output "bucket" {
  description = "The S3 bucket name"
  value       = aws_s3_bucket_website_configuration.website-config.bucket
}

output "website_endpoint" {
  description = "The website endpoint"
  value       = aws_s3_bucket_website_configuration.website-config.website_endpoint
}

output "website_domain" {
  description = "The website domain"
  value       = aws_s3_bucket_website_configuration.website-config.website_domain
}
