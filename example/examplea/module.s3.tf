module "s3" {
  source                  = "../../"
  common_tags             = var.common_tags
  s3_bucket_force_destroy = var.s3_bucket_force_destroy
  s3_bucket_name          = "${var.s3_bucket_name}${data.aws_caller_identity.current.account_id}"
  s3_bucket_policy        = ""
  mfa_delete              = var.mfa_delete
}
