data "aws_iam_policy_document" "s3_policy" {
  # checkov:skip=CKV_AWS_356: IAM policy requires broad access for this module to function
  # checkov:skip=CKV_AWS_290: IAM policy requires broad write access for this module to function
  # checkov:skip=CKV_AWS_355: IAM policy requires wildcard resource for this module to function
  statement {
    actions = [
      "s3:*",
    ]

    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${module.s3.account_id}:root"]
    }

    resources = [
      "arn:aws:s3:::${var.s3_bucket_name}/*",
    ]

    sid = "1"
  }
}
