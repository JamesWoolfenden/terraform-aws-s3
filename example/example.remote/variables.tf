variable "s3_bucket_name" {
  description = "The name of the bucket"
  type        = string
}

variable "s3_bucket_force_destroy" {
  description = "String Boolean to set bucket to be undeletable (well more difficult anyway)"
  type        = string
}

variable "mfa_delete" {
  type = bool
}

variable "remote" {
  type        = string
  description = "Remote account to let have access"
}
