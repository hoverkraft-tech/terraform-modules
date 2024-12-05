terraform {
  required_version = "~> 1.3"
  required_providers {
    time = {
      source  = "hashicorp/time"
      version = "~> 0.9.1"
    }
    ovh = {
      source  = "ovh/ovh"
      version = "~> 0.24.0"
    }
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.49.0"
    }
  }
}
