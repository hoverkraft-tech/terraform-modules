terraform {
  required_version = "~> 1.3"
  required_providers {
    time = {
      source  = "hashicorp/time",
      version = "~> 0.9.1"
    }
    aws = {
      source  = "hashicorp/aws",
      version = "< 7.0.0"
    }
  }
}
