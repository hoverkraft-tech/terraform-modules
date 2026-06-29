# NOTE: you might want to override this files with your own if you are using terragrunt
#       and are using more module to compose your stack

terraform {
  required_version = "~> 1.3"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.7.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.13.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.38.0"
    }
  }
}

provider "kubernetes" {
  config_path    = var.config_path
  config_context = var.config_context
}
