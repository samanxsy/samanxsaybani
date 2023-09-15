# # Amazon S3 Bucket Module
# # # # # # # # # # # # # #

# bucket
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  tags = var.bucket_tags
}

# ACL
resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = var.acl_state
}

# Versioning
resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.bucket.id

  versioning_configuration {
    status = var.versioning_status
    mfa_delete = var.mfa_status
  }
}

# LifeCycle
resource "aws_s3_bucket_lifecycle_configuration" "bucket_lifecycle" {
  bucket = aws_s3_bucket.bucket.id

  rule {
    id     = var.lifecycle_rule_id
    status = var.lifecycle_status
    transition {
      days          = var.transition_days
      storage_class = var.transition_storage_class
    }
  }
}
