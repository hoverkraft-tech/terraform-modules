resource "aws_launch_template" "template" {
  # FIXME: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/bc-aws-general-31
  #checkov:skip=CKV_AWS_79:fixme - we should be sure ec2 user-data scripts are using correct steps for that
  #checkov:skip=CKV_AWS_88:invalid - this is up to the end user of the module
  name                                 = var.name
  tags                                 = local.interpolated_tags
  instance_type                        = var.instance_type
  image_id                             = var.ami_id
  key_name                             = var.key_name
  instance_initiated_shutdown_behavior = var.instance_initiated_shutdown_behavior
  ebs_optimized                        = true
  vpc_security_group_ids               = var.security_groups_ids
  user_data                            = var.user_data
  update_default_version               = true

  block_device_mappings {
    device_name = "/dev/sda1"

    ebs {
      volume_size = var.root_volume_size
      volume_type = var.root_volume_type
    }
  }

  dynamic "iam_instance_profile" {
    for_each = var.iam_instance_profile != null ? [var.iam_instance_profile] : []
    content {
      name = iam_instance_profile.value
    }
  }

  dynamic "instance_market_options" {
    for_each = var.spot_price == null ? [] : [1]
    content {
      market_type = "spot"

      spot_options {
        spot_instance_type = "one-time"
        max_price          = var.spot_price
      }
    }
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "optional" #trivy:ignore:aws-ec2-enforce-launch-config-http-token-imds
    http_put_response_hop_limit = 1
  }

  monitoring {
    enabled = var.monitoring
  }

  dynamic "network_interfaces" {
    for_each = var.associate_public_ip_address == null ? [] : [1]
    content {
      associate_public_ip_address = var.associate_public_ip_address
    }
  }

  dynamic "placement" {
    for_each = var.availability_zone == null ? [] : [1]
    content {
      availability_zone = var.availability_zone
    }
  }

  tag_specifications {
    resource_type = "instance"

    tags = local.interpolated_tags
  }

  lifecycle {
    create_before_destroy = true
    ignore_changes = [
      security_group_names,
    ]
  }
}
