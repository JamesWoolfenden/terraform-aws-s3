resource "aws_s3_bucket_acl" "bucket" {
  #checkov:skip=CKV_AWS_19:v4 legacy
  bucket = aws_s3_bucket.bucket.id
  acl    = var.s3_bucket_acl
}
