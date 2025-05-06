# TODO: should we enable secret encryption by default ?
#trivy:ignore:aws-eks-encrypt-secrets
resource "aws_eks_cluster" "cluster" {
  #checkov:skip=CKV_AWS_39:invalid: most user will use public endpoints with ip restrictions
  #checkov:skip=CKV_AWS_58:fixme: enable secrets encryption
  #checkov:skip=CKV_AWS_339:invalid: this is just a default value
  #checkov:skip=CKV_AWS_38:invalid: can't predict end users IP ranges
  name     = var.name
  version  = var.k8s_version
  role_arn = var.role_arn
  tags     = local.interpolated_tags

  enabled_cluster_log_types = [
    "api",
    "audit",
    "authenticator",
    "controllerManager",
    "scheduler",
  ]


  vpc_config {
    endpoint_private_access = var.endpoint_private_access
    endpoint_public_access  = var.endpoint_public_access #trivy:ignore:aws-eks-no-public-cluster-access
    public_access_cidrs     = var.public_access_cidrs    #trivy:ignore:aws-eks-no-public-cluster-access-to-cidr
    security_group_ids      = var.security_group_ids
    subnet_ids              = var.subnet_ids
  }

  kubernetes_network_config {
    service_ipv4_cidr = var.service_ipv4_cidr
    ip_family         = var.ip_family
  }

}

data "tls_certificate" "certificate" {
  url = aws_eks_cluster.cluster.identity[0].oidc[0].issuer
}
