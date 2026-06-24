terraform {
  required_version = "~> 1.3"
  required_providers {
    ovh = {
      source  = "ovh/ovh"
      version = "~> 2.13.1"
    }
    time = {
      source  = "hashicorp/time",
      version = "~> 0.13.1"
    }
  }
}
