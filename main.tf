terraform {
    cloud {
        organization = "ourdevops" 
        workspaces {
          name = "test-workspace" 
        }
      }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.12.1"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1" 
}

resource "aws_s3_bucket" "new_bucket" {
  bucket = "demo-github-action-tf-medium04"

  object_lock_enabled = false

  tags = {
    Environment = "Prod"
  }
}
