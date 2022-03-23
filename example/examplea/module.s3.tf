module "s3" {
  source                  = "../../"
  s3_bucket_force_destroy = var.s3_bucket_force_destroy
  s3_bucket_name          = local.full_s3_bucket_name
  s3_bucket_policy        = data.aws_iam_policy_document.basic.json
  mfa_delete              = var.mfa_delete
  kms_key                 = aws_kms_key.s3
  logging                 = [aws_s3_bucket.logging.bucket]
}


locals {
  full_s3_bucket_name = "${var.s3_bucket_name}${data.aws_caller_identity.current.account_id}"
}
