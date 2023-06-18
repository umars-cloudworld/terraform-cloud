terraform {
  required_version = "~> 1.4.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.15.1"
    }
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
  }
    backend "remote" {
    organization = "github-actions-terraform"

    workspaces {
      name = "github-actions-demo"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}
