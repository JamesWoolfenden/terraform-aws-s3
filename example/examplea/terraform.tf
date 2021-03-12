terraform {
  required_providers {
    aws = {
      version = "3.32.0"
      source  = "hashicorp/aws"
    }

    template = {
      version = "2.1"
    }

  }
  required_version = "0.14.8"
}
