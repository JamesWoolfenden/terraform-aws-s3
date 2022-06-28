module "s3" {
  source                  = "git::git@github.com:JamesWoolfenden/terraform-aws-s3.git"
  s3_bucket_force_destroy = var.s3_bucket_force_destroy
  s3_bucket_name          = local.full_s3_bucket_name
  s3_bucket_policy        = data.aws_iam_policy_document.s3_policy.json
  mfa_delete              = "Disabled"
  logging                 = [aws_s3_bucket.logging.bucket]
  kms_key_id              = aws_kms_key.s3.arn
}
locals {
  full_s3_bucket_name = "${var.s3_bucket_name}${data.aws_caller_identity.current.account_id}"
}
