terraform {
  required_version = "~> 1.3"
  required_providers {
    time = {
      source  = "hashicorp/time",
      version = "~> 0.9.1"
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
}
