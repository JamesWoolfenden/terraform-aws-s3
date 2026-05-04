terraform {
  backend "remote" {
    organization = "Wolf"

    workspaces {
      name = "terraform-aws-s3-examplea"
    }
  }


  required_providers {

    template = {
      version = "2.1"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "6.43.0"
    }
  }
  required_version = "0.14.8"
}
