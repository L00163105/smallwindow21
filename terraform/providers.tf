terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.42.0"
    }
  }
  required_version = ">= 0.15.3"

  backend "remote" {
    organization = "l00163105"

    workspaces {
      name = "l00163105-workspace"
    }
  }
}
data "aws_caller_identity" "current" {}
provider "aws" {
  #profile = var.aws_profile
  region = var.region
  # remember that if you change the region you will also need to change the ami
}


