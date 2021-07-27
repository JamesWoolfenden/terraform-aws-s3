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
}
