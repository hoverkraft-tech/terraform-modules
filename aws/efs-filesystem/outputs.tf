output "id" {
  value = aws_efs_file_system.fs.id
}

output "dns_name" {
  value = aws_efs_file_system.fs.dns_name
}

output "arn" {
  value = aws_efs_file_system.fs.arn
}

output "owner_id" {
  value = aws_efs_file_system.fs.owner_id
}

output "number_of_mount_targets" {
  value = aws_efs_file_system.fs.number_of_mount_targets
}

output "size_in_bytes" {
  value = aws_efs_file_system.fs.size_in_bytes
}
