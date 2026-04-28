terraform {
  required_providers {
    azapi = {
      source  = "Azure/azapi"
      version = ">= 2.6.0, <3.0.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.13.1"
    }
  }
  required_version = "~> 1.3"
}
