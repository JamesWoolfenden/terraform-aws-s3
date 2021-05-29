terraform {
  required_providers {
    aws = {
      version = "3.42.0"
      source  = "hashicorp/aws"
    }
    template = {
      version = "2.2.0"
      source  = "hashicorp/template"
    }
  }
  required_version = ">=0.14.8"
}
