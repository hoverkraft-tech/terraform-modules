output "addon_arn" {
  description = "The ARN of the EKS addon"
  value       = aws_eks_addon.addon.arn
}
