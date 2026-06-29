# NOTE: you might want to override this files with your own if you are using terragrunt
#       and are using more module to compose your stack

terraform {
  required_version = "~> 1.3"
  required_providers {
    ovh = {
      source  = "ovh/ovh"
      version = "~> 0.51.0"
    }
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.54.0"
    }
    time = {
      source  = "hashicorp/time",
      version = "~> 0.13.0"
    }
  }
}
