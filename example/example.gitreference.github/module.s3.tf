module "s3" {
  source                  = "git::https://github.com/JamesWoolfenden/terraform-aws-s3.git?ref=7115546980e3e3ebc700149bb3c03be58a153f0d" #v0.5.25
  s3_bucket_force_destroy = var.s3_bucket_force_destroy
  s3_bucket_name          = var.s3_bucket_name
  s3_bucket_policy        = data.aws_iam_policy_document.s3_policy.json
}
