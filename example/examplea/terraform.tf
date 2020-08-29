terraform {
  required_providers {
    aws = {
      version = "3.2.0"
      source  = "hashicorp/aws"
    }

    template = {
      version = "2.1"
    }

  }
}
