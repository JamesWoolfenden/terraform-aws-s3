data "aws_iam_policy_document" "basic" {
  # checkov:skip=CKV_AWS_356: IAM policy requires broad access for this module to function
  # checkov:skip=CKV_AWS_290: IAM policy requires broad write access for this module to function
  # checkov:skip=CKV_AWS_355: IAM policy requires wildcard resource for this module to function

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
