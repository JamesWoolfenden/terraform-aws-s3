
resource "aws_s3_bucket" "logging" {
  #checkov:skip=CKV_AWS_144: Replication not required
  #checkov:skip=CKV_AWS_145: Legacy issue
  #checkov:skip=CKV_AWS_19: Legacy issue
  #checkov:skip=CKV_AWS_21: Legacy issue
  bucket = "logging-${data.aws_caller_identity.current.account_id}"
}


resource "aws_s3_bucket_acl" "logging" {
  bucket = aws_s3_bucket.logging.id
  acl    = "log-delivery-write"
}

resource "aws_s3_bucket_versioning" "logging" {
  bucket = aws_s3_bucket.logging.id
  versioning_configuration {
    status     = "Disabled"
    mfa_delete = "Disabled"
  }
}


resource "aws_s3_bucket_server_side_encryption_configuration" "logging" {
  bucket = aws_s3_bucket.logging.bucket

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.s3.arn
      sse_algorithm     = "aws:kms"
    }
  }
}
