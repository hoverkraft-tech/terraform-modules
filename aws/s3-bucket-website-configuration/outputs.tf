output "id" {
  description = "The ID of the S3 bucket website configuration"
  value       = aws_s3_bucket_website_configuration.website-config.id
}
