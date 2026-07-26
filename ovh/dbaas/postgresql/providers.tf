terraform {
  required_providers {
    ovh = {
      source  = "ovh/ovh"
      version = "~> 2.13.1"
    }
    time = {
      source  = "hashicorp/time",
      version = "~> 0.14.0"
    }
  }
  required_version = "~> 1.3"
}
