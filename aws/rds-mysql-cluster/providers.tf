terraform {
  required_version = "~> 1.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.30.0, < 5.0.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.9.1"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.3"
    }
  }
}
