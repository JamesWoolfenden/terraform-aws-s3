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

variable "s3_logging" {
  description = "Enable logging on s3 bucket"
  type        = bool
  default     = true
}

variable "versioning" {
  description = "Enable versioning on s3 bucket"
  type        = bool
  default     = true
}

variable "sse_algorithm" {
  description = "The type of encryption algorithm to use"
  type        = string
  default     = "aws:kms"
}

variable "logging" {
  description = "If setting up a logging bucket"
  type        = map
  default = {
    target_bucket = ""
    target_prefix = ""
  }
}

variable "access_block" {
  description = ""
  type        = map
  default = {
    block_public_acls       = false
    block_public_policy     = false
    ignore_public_acls      = false
    restrict_public_buckets = false
  }
}

locals {
  env = substr(var.common_tags["environment"], 0, 1)
}
