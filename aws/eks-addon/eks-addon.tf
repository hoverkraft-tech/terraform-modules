resource "aws_eks_addon" "addon" {
  addon_name               = var.name
  addon_version            = var.addon_version
  cluster_name             = var.cluster_name
  configuration_values     = var.configuration_values
  resolve_conflicts        = "OVERWRITE"
  service_account_role_arn = var.service_account_role_arn != null && var.service_account_role_arn != "" ? var.service_account_role_arn : null
  tags                     = local.interpolated_tags
}
