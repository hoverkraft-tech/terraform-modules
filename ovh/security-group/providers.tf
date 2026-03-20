terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 3.4.0"
    }
    time = {
      source  = "hashicorp/time",
      version = "~> 0.13.1"
    }
  }
  required_version = "~> 1.3"
}
