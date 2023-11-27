terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.53.0"
    }
    time = {
      source  = "hashicorp/time",
      version = "~> 0.9.1"
    }
  }
  required_version = "~> 1.3"
}
