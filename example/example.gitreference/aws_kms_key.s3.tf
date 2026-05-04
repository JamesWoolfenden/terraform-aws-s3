resource "aws_kms_key" "s3" {
  # checkov:skip=CKV2_AWS_64: For example only, key policy managed via IAM
  enable_key_rotation = true
}
