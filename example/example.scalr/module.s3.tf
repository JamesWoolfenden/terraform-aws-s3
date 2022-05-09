module "s3" {
  source                  = "jameswoolfenden.scalr.io/env-u1ksa1g1cdtbkv0/s3/aws"
  version                 = "0.5.6"
  s3_bucket_force_destroy = var.s3_bucket_force_destroy
  s3_bucket_name          = var.s3_bucket_name
  s3_bucket_policy        = data.aws_iam_policy_document.s3_policy.json
}
