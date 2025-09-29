output "bucket" {
  description = "The S3 bucket name"
  value       = aws_s3_bucket_policy.s3_bucket_policy.bucket
}
