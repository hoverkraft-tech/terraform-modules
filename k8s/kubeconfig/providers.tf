terraform {
  required_version = "~> 1.3"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.7.0"
    }
    time = {
      source  = "hashicorp/time",
      version = "~> 0.13.0"
    }
  }
}
