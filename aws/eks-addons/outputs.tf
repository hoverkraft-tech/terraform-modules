output "addon_arns" {
  description = "The ARNs of the EKS addons"
  value       = aws_eks_addon.addon[*].arn
}
