resource "aws_eks_node_group" "node_group" {
  ami_type               = var.ami_type
  capacity_type          = var.capacity_type
  cluster_name           = var.cluster_name
  disk_size              = var.disk_size
  force_update_version   = var.force_update_version
  instance_types         = var.instance_types
  labels                 = var.labels
  node_group_name        = var.name
  node_group_name_prefix = var.node_group_name_prefix
  node_role_arn          = var.node_role_arn
  release_version        = var.release_version
  subnet_ids             = var.subnet_ids
  tags                   = local.interpolated_tags
  version                = var.k8s_version

  launch_template {
    id      = var.launch_template_id
    version = var.launch_template_version
  }

  dynamic "remote_access" {
    for_each = var.remote_access == null ? [] : [var.remote_access]
    content {
      ec2_ssh_key               = remote_access.value.ec2_ssh_key
      source_security_group_ids = remote_access.value.source_security_group_ids
    }
  }

  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
  }

  dynamic "taint" {
    for_each = var.taints
    content {
      effect = taint.value.effect
      key    = taint.value.key
      value  = taint.value.value
    }
  }

  update_config {
    max_unavailable            = var.update_max_unavailable
    max_unavailable_percentage = var.update_max_unavailable_percentage
  }

  lifecycle {
    ignore_changes = [scaling_config[0].desired_size]
  }

}
