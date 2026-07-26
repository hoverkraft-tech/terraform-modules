terraform {
  required_version = "~> 1.3"
  required_providers {
    ovh = {
      source  = "ovh/ovh"
      version = "~> 2.13.1"
    }
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 3.4.0"
    }
    time = {
      source  = "hashicorp/time",
      version = "~> 0.14.0"
    }
  }
}
