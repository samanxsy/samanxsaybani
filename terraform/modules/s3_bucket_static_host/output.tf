# # Outputs
# # # # # #

output "bucket_arn" {
  value = aws_s3_bucket.bucket.arn
}


output "bucket_id" {
  value = aws_s3_bucket.bucket.id
}


output "bucket_url" {
  value = aws_s3_bucket.bucket.bucket_regional_domain_name
}
