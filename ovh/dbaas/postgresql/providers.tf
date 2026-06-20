terraform {
  required_providers {
    ovh = {
      source  = "ovh/ovh"
      version = "~> 2.12.0"
    }
    time = {
      source  = "hashicorp/time",
      version = "~> 0.9.1"
    }
  }
  required_version = "~> 1.3"
}
