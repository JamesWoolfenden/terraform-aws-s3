resource "aws_s3_bucket" "bucket" {
  bucket        = var.s3_bucket_name
  policy        = var.s3_bucket_policy
  acl           = var.s3_bucket_acl
  force_destroy = var.s3_bucket_force_destroy

  tags = merge(var.common_tags, map("Name", "${local.env}-${var.s3_bucket_name}-S3"))
}
