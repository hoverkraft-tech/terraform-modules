# NOTE: you might want to override this files with your own if you are using terragrunt
#       and are using more module to compose your stack

terraform {
  required_version = "~> 1.3"
  required_providers {
    time = {
      source  = "hashicorp/time"
      version = "~> 0.9.1"
    }
    ovh = {
      source  = "ovh/ovh"
      version = "~> 2.12.0"
    }
  }
}
