terraform {
  required_version = "~> 1.3"
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.3.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.9.1"
    }
  }
}
