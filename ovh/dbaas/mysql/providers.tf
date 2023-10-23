terraform {
  required_providers {
    ovh = {
      source  = "ovh/ovh"
      version = "~> 0.26.0"
    }
    time = {
      source  = "hashicorp/time",
      version = "~> 0.9.1"
    }
  }
  required_version = "~> 1.3"
}
