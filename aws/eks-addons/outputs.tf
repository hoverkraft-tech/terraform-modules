output "id" {
  description = "The IDs of the EKS addons"
  value       = aws_eks_addon.addon[*].id
}
