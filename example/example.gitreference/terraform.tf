terraform {
  required_providers {
    template = {
      version = "2.2.0"
      source  = "hashicorp/template"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "6.43.0"
    }
  }
  required_version = ">=0.14.8"
}
