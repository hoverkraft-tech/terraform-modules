resource "aws_eks_addon" "addon" {
  count             = length(var.addons)
  cluster_name      = var.cluster_name
  addon_name        = var.addons[count.index].name
  addon_version     = var.addons[count.index].version
  resolve_conflicts = "OVERWRITE"
  tags              = merge({ "Name" = var.addons[count.index].name }, local.interpolated_tags)

}
