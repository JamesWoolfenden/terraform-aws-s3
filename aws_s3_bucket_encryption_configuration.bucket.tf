resource "aws_s3_bucket_server_side_encryption_configuration" "bucket" {
  count  = local.encrypt
  bucket = aws_s3_bucket.bucket.bucket

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = var.kms_key_id
      sse_algorithm     = "aws:kms"
    }
  }
}

locals {
  encrypt = var.kms_key_id == "" ? 0 : 1
}
