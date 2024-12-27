#trivy:ignore:AVD-AWS-0010 encryption is up to the user
#trivy:ignore:AVD-AWS-0089 bucket logging is up to the user
resource "aws_s3_bucket" "bucket" {
  #checkov:skip=CKV_AWS_6:invalid - bucket public access is blocked
  #checkov:skip=CKV_AWS_18:invalid - bucket logging is up to the end user of the module
  #checkov:skip=CKV_AWS_19:TODO -  add support for bucket encryption
  #checkov:skip=CKV_AWS_21:invalid - this is up to the end user of the module
  #checkov:skip=CKV_AWS_57:invalid - bucket canned acls are deprecated
  #checkov:skip=CKV_AWS_144:TODO - add cross region replication variable
  #checkov:skip=CKV_AWS_145:TODO - add support for kms encryption
  #checkov:skip=CKV2_AWS_18:TODO - add support for bucket logging
  #checkov:skip=CKV2_AWS_43:invalid - this is up to the end user of the module
  #checkov:skip=CKV2_AWS_54:invalid - this is up to the end user of the module
  #checkov:skip=CKV2_AWS_61:invalid - this is handled in a separate module
  #checkov:skip=CKV2_AWS_62:TODO - add support for event notifications
  bucket              = var.name
  force_destroy       = var.force_destroy
  object_lock_enabled = var.object_lock_enabled
  tags                = local.interpolated_tags
}

resource "aws_s3_bucket_public_access_block" "bucket_public_access" {
  bucket = aws_s3_bucket.bucket.id

  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
  bucket = aws_s3_bucket.bucket.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = null
      sse_algorithm     = "AES256"
    }
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_ownership_controls" "default" {
  #checkov:skip=CKV2_AWS_65:this is up to the user
  bucket = aws_s3_bucket.bucket.id
  rule {
    object_ownership = var.object_ownership
  }
}

resource "aws_s3_bucket_acl" "default" {
  count      = var.acl != null && var.object_ownership != "BucketOwnerEnforced" ? 1 : 0
  depends_on = [aws_s3_bucket_ownership_controls.default]

  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}
