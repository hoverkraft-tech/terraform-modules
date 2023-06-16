# policy
resource "aws_s3_bucket_policy" "s3_bucket_policy" {
  bucket = var.bucket_id
  policy = var.bucket_policy
}
