resource "aws_s3_bucket" "bucket" {
  acl    = var.s3_bucket_acl
  bucket = var.s3_bucket_name
  policy = var.s3_bucket_policy

  force_destroy = var.s3_bucket_force_destroy
  #checkov:skip=CKV_AWS_52: "Ensure S3 bucket has MFA delete enabled"
  versioning {
    enabled    = var.versioning
    mfa_delete = var.mfa_delete
  }

  #dynamic block is used to work around when logging is not required
  dynamic "logging" {
    for_each = var.logging
    content {
      target_bucket = logging.value
      target_prefix = "log/${var.s3_bucket_name}"
    }
  }

  dynamic "replication_configuration" {
    for_each = var.role
    content {
      role = replication_configuration.value["role"]
      rules {
        id     = replication_configuration.value["id"]
        status = replication_configuration.value["status"]
      }

    }
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

variable "role" {
  default = {}
}
