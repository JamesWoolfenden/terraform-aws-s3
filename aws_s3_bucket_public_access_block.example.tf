resource "aws_s3_bucket_public_access_block" "bucket" {
  bucket = aws_s3_bucket.bucket.id
  # tfsec:ignore:AWS074
  block_public_acls = var.access_block["block_public_acls"]
  # tfsec:ignore:AWS076
  block_public_policy = var.access_block["block_public_policy"]
  # tfsec:ignore:AWS073
  ignore_public_acls = var.access_block["ignore_public_acls"]
  # tfsec:ignore:AWS075
  restrict_public_buckets = var.access_block["restrict_public_buckets"]
}
