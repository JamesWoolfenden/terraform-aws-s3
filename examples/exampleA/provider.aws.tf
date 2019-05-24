provider "aws" {
  region  = var.region
  version = "2.12"
}

provider "template" {
  version = "2.1"
}
