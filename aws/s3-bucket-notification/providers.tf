terraform {
  required_version = "~> 1.3"
  required_providers {
    time = {
      source  = "hashicorp/time",
      version = "~> 0.9.1"
    }
    aws = {
      source  = "hashicorp/aws",
      version = ">= 4.30.0, < 5.0.0"
    }
  }
}
