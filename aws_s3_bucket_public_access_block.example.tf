resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.bucket.id

  block_public_acls       = var.access_block["block_public_acls"]
  block_public_policy     = var.access_block["block_public_policy"]
  ignore_public_acls      = var.access_block["ignore_public_acls"]
  restrict_public_buckets = var.access_block["restrict_public_buckets"]
}
