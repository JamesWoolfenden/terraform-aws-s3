resource "aws_s3_bucket" "bucket" {
  bucket        = var.s3_bucket_name
  policy        = var.s3_bucket_policy
  acl           = var.s3_bucket_acl
  force_destroy = var.s3_bucket_force_destroy

  tags = var.common_tags
}
