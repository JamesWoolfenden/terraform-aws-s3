resource "aws_s3_bucket" "logging" {
  #checkov:skip=CKV_AWS_18:This is a logging bucket
  #checkov:skip=CKV_AWS_21:Versioning for logs? Yeah no
  bucket = "logging-${data.aws_caller_identity.current.account_id}"
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  versioning {
    enabled    = false
    mfa_delete = true
  }
}
