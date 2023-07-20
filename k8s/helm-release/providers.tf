terraform {
  required_version = "~> 1.3"
  required_providers {
    helm = {
      source  = "hashicorp/helm",
      version = ">= 2.8.0, < 3.0.0"
    }
  }
}

provider "helm" {
  kubernetes {
    config_paths   = var.kubeconfig_paths
    config_context = var.kubeconfig_context
  }
}
