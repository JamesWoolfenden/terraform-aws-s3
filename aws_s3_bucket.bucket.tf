resource "aws_s3_bucket" "bucket" {
  bucket = var.s3_bucket_name
  policy = var.s3_bucket_policy
  acl    = var.s3_bucket_acl

  logging {
    target_bucket = var.logging["target_bucket"]
    target_prefix = var.logging["target_prefix"]
  }


  force_destroy = var.s3_bucket_force_destroy

  versioning {
    enabled = var.versioning
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = var.sse_algorithm
      }
    }
  }

  tags = var.common_tags
}
