resource "aws_s3_bucket_versioning" "bucket" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status     = var.versioning
    mfa_delete = var.mfa_delete
  }
}
