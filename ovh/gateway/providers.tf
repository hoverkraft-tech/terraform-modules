terraform {
  required_version = "~> 1.3"
  required_providers {
    ovh = {
      source  = "ovh/ovh"
      version = "~> 2.1"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.14.0"
    }
  }
}
