terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = ">= 3.5.0, <4.0.0"
    }
    time = {
      source  = "hashicorp/time",
      version = "~> 0.13.1"
    }
  }
  required_version = "~> 1.3"
}
