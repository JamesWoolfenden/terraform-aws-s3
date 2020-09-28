data "aws_iam_policy_document" "s3_policy" {
  statement {
    actions = [
      "s3:*",
    ]

    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"]
    }

    resources = [
      "arn:aws:s3:::${var.s3_bucket_name}/*",
    ]

    sid = "1"
  }
}
