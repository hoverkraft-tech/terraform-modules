output "bucket" {
  description = "The S3 bucket name"
  value       = aws_s3_bucket_notification.bucket_notification.bucket
}
