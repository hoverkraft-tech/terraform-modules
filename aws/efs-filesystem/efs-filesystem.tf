resource "aws_efs_file_system" "fs" {

  availability_zone_name          = var.availability_zone_name
  creation_token                  = var.creation_token
  encrypted                       = var.encrypted
  kms_key_id                      = var.kms_key_id
  performance_mode                = var.performance_mode
  provisioned_throughput_in_mibps = var.provisioned_throughput_in_mibps
  throughput_mode                 = var.throughput_mode
  dynamic "lifecycle_policy" {
    for_each = var.lifecycle_policy == null ? [] : [1]
    content {
      transition_to_ia                    = var.lifecycle_policy.value.transition_to_ia
      transition_to_primary_storage_class = var.lifecycle
    }
  }
  tags = local.interpolated_tags
}

resource "aws_efs_mount_target" "mt" {
  count           = length(var.subnet_ids)
  file_system_id  = aws_efs_file_system.fs.id
  subnet_id       = var.subnet_ids[count.index]
  security_groups = var.security_groups
}
