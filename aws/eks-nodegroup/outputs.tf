output "arn" {
  description = "ARN of the created EKS nodegroup"
  value       = aws_eks_node_group.node_group.arn
}

output "id" {
  description = "ID of the created EKS nodegroup"
  value       = aws_eks_node_group.node_group.id
}

output "name" {
  description = "Name of the created EKS nodegroup"
  value       = var.name
}

output "status" {
  description = "Status of the created EKS nodegroup"
  value       = aws_eks_node_group.node_group.status
}
