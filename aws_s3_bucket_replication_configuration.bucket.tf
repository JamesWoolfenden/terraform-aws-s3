resource "aws_s3_bucket_replication_configuration" "bucket" {
  bucket = aws_s3_bucket.bucket.id
  count  = length(var.role)

  role = var.role["role"]
  rule {
    id     = var.role["id"]
    status = var.role["status"]
    destination {
      bucket        = var.role["destination"]
      storage_class = var.role["storage_class"]
    }
  }
}
