terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.40.0, <5.0.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.13.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.4"
    }
  }
  required_version = "~> 1.3"
}
