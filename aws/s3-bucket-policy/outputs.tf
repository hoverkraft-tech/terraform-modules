output "id" {
  description = "The ID of the S3 bucket policy"
  value       = aws_s3_bucket_policy.s3_bucket_policy.id
}

output "bucket" {
  description = "The S3 bucket name"
  value       = aws_s3_bucket_policy.s3_bucket_policy.bucket
}
