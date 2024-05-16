resource "aws_db_subnet_group" "subnet_group" {
  name       = var.name
  subnet_ids = var.subnet_ids
  tags       = local.interpolated_tags
}

resource "aws_rds_cluster_parameter_group" "params" {
  name        = var.name
  family      = var.db_parameter_group_family
  description = "${var.name} parameters group"
  dynamic "parameter" {
    for_each = var.db_parameter_group_parameters == null ? [] : var.db_parameter_group_parameters

    content {
      name  = parameter.value.name
      value = parameter.value.value
    }
  }

  tags = local.interpolated_tags
}

#trivy:ignore:aws-rds-encrypt-cluster-storage-data
#trivy:ignore:AVD-AWS-0343 protection is activated by default
resource "aws_rds_cluster" "cluster" {
  #checkov:skip=CKV2_AWS_8:it's not module responsibility to create a backup plan
  #checkov:skip=CKV_AWS_20:RDS cluster is encrypted
  #checkov:skip=CKV_AWS_118:we don't want enhanced monitoring for now
  #checkov:skip=CKV_AWS_128:we don't want to deal with IAM authentication
  #checkov:skip=CKV_AWS_139:deletion protection is activated by default
  #checkov:skip=CKV_AWS_162:we don't want to deal with IAM authentication
  #checkov:skip=CKV_AWS_324:we don't want log capture
  #checkov:skip=CKV_AWS_327:we don't want using kms key
  #checkov:skip=CKV_AWS_354:we don't need performance insights

  cluster_identifier                  = var.name
  engine                              = var.engine
  engine_mode                         = var.engine_mode
  engine_version                      = var.engine_version
  database_name                       = var.database_name
  master_username                     = var.username
  master_password                     = var.password
  final_snapshot_identifier           = "${var.name}-final-snapshot"
  skip_final_snapshot                 = false
  deletion_protection                 = var.deletion_protection
  backup_retention_period             = var.backup_retention_period
  preferred_backup_window             = var.preferred_backup_window
  preferred_maintenance_window        = var.preferred_maintenance_window
  port                                = var.port
  db_subnet_group_name                = aws_db_subnet_group.subnet_group.name
  vpc_security_group_ids              = var.security_group_ids
  storage_encrypted                   = var.storage_encrypted
  apply_immediately                   = var.apply_immediately
  db_cluster_parameter_group_name     = aws_rds_cluster_parameter_group.params.name
  iam_database_authentication_enabled = var.iam_database_authentication_enabled
  copy_tags_to_snapshot               = var.copy_tags_to_snapshot
  iam_roles                           = var.iam_roles
  enabled_cloudwatch_logs_exports     = var.enabled_cloudwatch_logs_exports

  dynamic "scaling_configuration" {
    for_each = var.scaling_configuration != null ? [var.scaling_configuration] : []

    content {
      auto_pause               = lookup(scaling_configuration.value, "auto_pause", null)
      max_capacity             = lookup(scaling_configuration.value, "max_capacity", null)
      min_capacity             = lookup(scaling_configuration.value, "min_capacity", null)
      seconds_until_auto_pause = lookup(scaling_configuration.value, "seconds_until_auto_pause", null)
      timeout_action           = lookup(scaling_configuration.value, "timeout_action", null)
    }
  }

  dynamic "serverlessv2_scaling_configuration" {
    for_each = var.serverlessv2_scaling_configuration != null ? [var.serverlessv2_scaling_configuration] : []

    content {
      min_capacity = lookup(serverlessv2_scaling_configuration.value, "min_capacity", null)
      max_capacity = lookup(serverlessv2_scaling_configuration.value, "max_capacity", null)
    }
  }

  tags = local.interpolated_tags
}

resource "aws_rds_cluster_instance" "instance" {
  #checkov:skip=CKV_AWS_118:we don't want enhanced monitoring for now
  #checkov:skip=CKV_AWS_273:we don't use IAM users or SSO
  #checkov:skip=CKV_AWS_354:we don't need performance insights

  count                        = local.instances_count
  identifier                   = var.instances[count.index].name
  cluster_identifier           = aws_rds_cluster.cluster.id
  engine                       = aws_rds_cluster.cluster.engine
  engine_version               = aws_rds_cluster.cluster.engine_version
  instance_class               = lookup(var.instances[count.index], "instance_class", var.default_instance_class)
  publicly_accessible          = lookup(var.instances[count.index], "publicly_accessible", false)
  availability_zone            = lookup(var.instances[count.index], "availability_zone", null)
  db_subnet_group_name         = aws_db_subnet_group.subnet_group.name
  apply_immediately            = var.apply_immediately
  monitoring_role_arn          = var.rds_enhanced_monitoring_role_arn
  monitoring_interval          = var.rds_enhanced_monitoring_interval
  auto_minor_version_upgrade   = var.auto_minor_version_upgrade
  performance_insights_enabled = var.performance_insights_enabled
  copy_tags_to_snapshot        = var.copy_tags_to_snapshot

  # Updating engine version forces replacement of instances, and they shouldn't be replaced
  # because cluster will update them if engine version is changed
  lifecycle {
    ignore_changes = [
      engine_version
    ]
  }

  tags = local.interpolated_tags
}
