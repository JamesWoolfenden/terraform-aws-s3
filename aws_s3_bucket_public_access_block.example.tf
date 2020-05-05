resource "aws_s3_bucket_public_access_block" "example" {
  #checkov:skip=CKV_AWS_53: "Ensure S3 bucket has block public ACLS enabled"
  #checkov:skip=CKV_AWS_54: "Ensure S3 bucket has block public policy enabled"
  #checkov:skip=CKV_AWS_55: "Ensure S3 bucket has ignore public ACLs enabled"
  #checkov:skip=CKV_AWS_56: "Ensure S3 bucket has 'restrict_public_bucket' enabled"
  bucket = aws_s3_bucket.bucket.id

  block_public_acls       = var.access_block["block_public_acls"]
  block_public_policy     = var.access_block["block_public_policy"]
  ignore_public_acls      = var.access_block["ignore_public_acls"]
  restrict_public_buckets = var.access_block["restrict_public_buckets"]
}
