output "s3_id" {
  value = "${aws_s3_bucket.bucket.id}"
}

output "account_id" {
  value = "${data.aws_caller_identity.current.account_id}"
}
