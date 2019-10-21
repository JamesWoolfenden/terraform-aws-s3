output s3_id {
  value       = aws_s3_bucket.bucket.id
  description = "The id of the bucket"
}

output bucket_domain_name {
  value       = aws_s3_bucket.bucket.bucket_domain_name
  description = "The full domain name of the bucket"
}

output account_id {
  value       = data.aws_caller_identity.current.account_id
  description = "The AWS account number in use"
}
