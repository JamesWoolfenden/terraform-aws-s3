variable "common_tags" {
  description = "This is a map type for applying tags on resources"
  type        = map(any)
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

variable "access_block" {
  description = ""
  type        = map(any)
  default = {
    block_public_acls       = false
    block_public_policy     = false
    ignore_public_acls      = false
    restrict_public_buckets = false
  }
}

variable "mfa_delete" {
  type        = bool
  description = "To enable/disable MFA delete"
  default     = true
}

variable "logging" {
  type    = list(string)
  default = []
}
