resource "aws_s3_bucket" "bucket" {
  # checkov:skip=CKV2_AWS_61: Lifecycle configuration not required for this bucket
  # checkov:skip=CKV2_AWS_62: Event notifications not required for this bucket
  #checkov:skip=CKV_AWS_19:v4 legacy
  #checkov:skip=CKV_AWS_18:v4 legacy
  #checkov:skip=CKV_AWS_145:v4 legacy
  #checkov:skip=CKV_AWS_21:v4 legacy
  #checkov:skip=CKV_AWS_144:v4 legacy
  #checkov:skip=CKV_AWS_52:v4 legacy
  bucket        = var.s3_bucket_name
  force_destroy = var.s3_bucket_force_destroy
}
