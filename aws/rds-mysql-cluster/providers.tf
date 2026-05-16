terraform {
  required_version = "~> 1.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.67.0, < 5.0.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.13.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.2.0"
    }
  }
}
