terraform {
  required_version = "~>1.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.31"
    }
  }
}

provider "aws" {
  region  = "ap-south-1"
  profile = "terraform-profile"
}