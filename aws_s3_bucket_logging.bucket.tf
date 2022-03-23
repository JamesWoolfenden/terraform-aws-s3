resource "aws_s3_bucket_logging" "bucket" {
  count  = length(var.logging)
  bucket = aws_s3_bucket.bucket.id

  target_bucket = var.logging[0]
  target_prefix = "log/${var.s3_bucket_name}"
}
