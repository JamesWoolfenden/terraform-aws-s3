module "s3" {
  source                  = "jameswoolfenden/aws/s3"
  version                 = "0.0.3"
  common_tags             = "${var.common_tags}"
  s3_bucket_force_destroy = "${var.s3_bucket_force_destroy}"
  s3_bucket_name          = "${var.s3_bucket_name}"
  s3_bucket_policy        = "${data.aws_iam_policy_document.s3_policy.json}"
}
