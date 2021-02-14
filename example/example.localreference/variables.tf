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
