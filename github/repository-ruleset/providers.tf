terraform {
  required_version = "~> 1.3"
  required_providers {
    time = {
      source  = "hashicorp/time",
      version = "~> 0.13.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
}
