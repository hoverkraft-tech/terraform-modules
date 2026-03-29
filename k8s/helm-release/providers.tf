terraform {
  required_version = "~> 1.3"
  required_providers {
    helm = {
      source  = "hashicorp/helm",
      version = "< 4.0.0"
    }
    time = {
      source  = "hashicorp/time",
      version = "~> 0.9.1"
    }
  }
}

provider "helm" {
  kubernetes {
    config_paths   = var.kubeconfig_paths
    config_context = var.kubeconfig_context
  }
}
