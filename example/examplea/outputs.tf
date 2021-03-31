output "bucket" {
  value = module.s3.bucket
}

output "logging" {
  value = aws_s3_bucket.logging
}
