variable "common_tags" {
  type = "map"
}

variable "s3_bucket_acl" {
  default = "private"
}

variable "s3_bucket_force_destroy" {}
variable "s3_bucket_name" {}
variable "s3_bucket_policy" {}

locals {
  env = "${substr(var.common_tags["environment"],0,1)}"
}
