terraform {
  required_providers {
    ovh = {
      source  = "ovh/ovh"
      version = "~> 2.13.0"
    }
    time = {
      source  = "hashicorp/time",
      version = "~> 0.13.1"
    }
  }
  required_version = "~> 1.3"
}
