variable "common_tags" {
  description = "This is a map type for applying tags on resources"
  type        = map
}

variable "s3_bucket_name" {
  description = "The name of the bucket"
  type        = string
}

variable "s3_bucket_force_destroy" {
  description = "String Boolean to set bucket to be undeletable (well more difficult anyway)"
  type        = string
}

variable "s3_bucket_acl" {
  default     = "private"
  description = "Acl on the bucket"
  type        = string
}

variable "s3_bucket_policy" {
  description = "The IAM policy for the bucket"
  type        = string
}

locals {
  env = substr(var.common_tags["environment"], 0, 1)
}

variable "region" {
  type    = string
  default = "eu-west-1"
}
