resource "aws_s3_bucket" "bucket" {
  bucket              = var.name
  force_destroy       = var.force_destroy
  object_lock_enabled = var.object_lock_enabled
  tags                = local.interpolated_tags
}
