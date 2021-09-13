data "aws_iam_policy_document" "basic" {

  statement {
    sid    = "AllowPublicReadGetObject"
    effect = "Allow"
    principals {
      type        = "*"
      identifiers = ["*"]
    }
    actions   = ["s3:GetObject"]
    resources = ["arn:aws:s3:::${local.full_s3_bucket_name}/*"]
  }

  statement {
    sid    = "DenyHttp"
    effect = "Deny"
    principals {
      type        = "*"
      identifiers = ["*"]
    }
    actions   = ["s3:GetObject"]
    resources = ["arn:aws:s3:::${local.full_s3_bucket_name}/*"]
    condition {
      test     = "StringEquals"
      values   = ["false"]
      variable = "aws:SecureTransport"
    }
  }

  statement {
    sid    = "Example remote permissions"
    effect = "Allow"
    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${var.remote}:root"]
    }
    actions = ["s3:GetBucketLogging",
    "s3:GetBucketAcl"]
    resources = ["arn:aws:s3:::${local.full_s3_bucket_name}"]
  }

}
