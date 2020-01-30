
output account_id {
  value       = data.aws_caller_identity.current.account_id
  description = "The AWS account number in use"
}

output bucket {
  value       = aws_s3_bucket.bucket
  description = "The  bucket"
}
