output "name" {
  description = "The name of the EKS cluster"
  value       = aws_eks_cluster.cluster.name
}

output "id" {
  description = "The ID of the EKS cluster"
  value       = aws_eks_cluster.cluster.id
}

output "arn" {
  description = "The ARN of the EKS cluster"
  value       = aws_eks_cluster.cluster.arn
}

output "endpoint" {
  description = "The endpoint of the created API Gateway API"
  value       = aws_eks_cluster.cluster.endpoint
}

output "certificate_authority" {
  description = "The certificate authority data for the cluster"
  value       = aws_eks_cluster.cluster.certificate_authority[0].data
}

output "security_group_id" {
  description = "The security group ID of the EKS cluster"
  value       = aws_eks_cluster.cluster.vpc_config[0].cluster_security_group_id
}

output "oidc_issuer_url" {
  description = "The OIDC issuer URL of the EKS cluster"
  value       = aws_eks_cluster.cluster.identity[0].oidc[0].issuer
}

output "oidc_issuer" {
  description = "The OIDC issuer of the EKS cluster"
  value       = replace(aws_eks_cluster.cluster.identity[0].oidc[0].issuer, "https://", "")
}

output "sha1_fingerprint" {
  description = "The SHA1 fingerprint of the EKS cluster"
  value       = data.tls_certificate.certificate.certificates[0].sha1_fingerprint
}
