terraform {
  required_version = "~> 1.3"
  required_providers {
    local = {
      source  = "hashicorp/local",
      version = ">= 2.2.3, < 3.0.0"
    }
    time = {
      source  = "hashicorp/time",
      version = "~> 0.9.1"
    }
  }
}
