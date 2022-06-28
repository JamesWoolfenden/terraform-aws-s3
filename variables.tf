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


variable "sse_algorithm" {
  description = "The type of encryption algorithm to use"
  type        = string
  default     = "aws:kms"
}

variable "access_block" {
  description = "Settings for the public access block"
  type        = map(any)
  default = {
    block_public_acls       = true
    block_public_policy     = true
    ignore_public_acls      = true
    restrict_public_buckets = true
  }
}

variable "mfa_delete" {
  type        = string
  description = "To enable/disable MFA delete"
  default     = "Disable"
}

variable "versioning" {
  type        = string
  description = "To enable/disable Versioning"
  default     = "Enabled"
}

variable "logging" {
  type    = list(string)
  default = []
}

variable "role" {
  description = "Replication configuration"
  default     = []
}

variable "kms_key_id" {
  type = string
}
