terraform {
  required_version = "~> 1.3"
  required_providers {
    time = {
      source  = "hashicorp/time"
      version = "~> 0.13.1"
    }
    ovh = {
      source  = "ovh/ovh"
      version = "~> 2.1"
    }
  }
}
