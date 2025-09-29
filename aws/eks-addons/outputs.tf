output "addon_arns" {
  description = "ARNs of the EKS addons"
  value       = aws_eks_addon.addon[*].arn
}

output "addon_names" {
  description = "Names of the EKS addons"
  value       = aws_eks_addon.addon[*].addon_name
}

output "addon_versions" {
  description = "Versions of the EKS addons"
  value       = aws_eks_addon.addon[*].addon_version
}
