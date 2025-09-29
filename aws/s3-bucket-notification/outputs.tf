output "id" {
  description = "The ID of the S3 bucket notification"
  value       = aws_s3_bucket_notification.bucket_notification.id
}

output "bucket" {
  description = "The S3 bucket name"
  value       = aws_s3_bucket_notification.bucket_notification.bucket
}
