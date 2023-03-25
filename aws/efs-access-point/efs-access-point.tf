resource "aws_efs_access_point" "ap" {
  file_system_id = var.efs_file_system_id
  dynamic "posix_user" {
    for_each = var.posix_user == null ? [] : [var.posix_user]
    content {
      gid = posix_user.value.gid
      uid = posix_user.value.uid
    }
  }
  dynamic "root_directory" {
    for_each = [local.root_directory]
    content {
      creation_info {
        owner_gid   = root_directory.value.creation_info.owner_gid
        owner_uid   = root_directory.value.creation_info.owner_uid
        permissions = root_directory.value.creation_info.permissions
      }
      path = root_directory.value.path
    }
  }
  tags = local.interpolated_tags
}
