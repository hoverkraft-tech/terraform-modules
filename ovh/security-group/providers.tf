terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.54.0"
    }
    time = {
      source  = "hashicorp/time",
      version = "~> 0.13.0"
    }
  }
  required_version = "~> 1.3"
}
