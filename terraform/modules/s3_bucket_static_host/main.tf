# # Amazon S3 Bucket Module
# # # # # # # # # # # # # #

# bucket
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  tags   = var.bucket_tags
}

# Web hosting
resource "aws_s3_bucket_website_configuration" "web_hosting" {
  bucket = aws_s3_bucket.bucket.id

  index_document {
    suffix = var.index_file_name
  }
}


resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket = aws_s3_bucket.bucket.id

  block_public_acls       = var.public_access_block
  block_public_policy     = var.public_policy_block
  ignore_public_acls      = var.public_acl_ignore
  restrict_public_buckets = var.public_buckets_restrict
}

resource "aws_s3_bucket_ownership_controls" "ownership_config" {
  bucket = aws_s3_bucket.bucket.id

  rule {
    object_ownership = var.object_ownership_status
  }
}

resource "aws_s3_bucket_acl" "bucket_access_control" {
  depends_on = [
    aws_s3_bucket_ownership_controls.ownership_config,
    aws_s3_bucket_public_access_block.public_access
  ]

  bucket = aws_s3_bucket.bucket.id
  acl    = var.bucket_access_control_status
}

# HTML
resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.bucket.id

  depends_on = [ 
    aws_s3_bucket_ownership_controls.ownership_config,
    aws_s3_bucket_public_access_block.public_access
   ]

  key          = var.index_file_key
  acl          = var.index_file_acl
  source       = var.index_file_path
  content_type = var.index_file_type
}

# CSS
resource "aws_s3_object" "css" {
  bucket = aws_s3_bucket.bucket.id

  depends_on = [ 
    aws_s3_bucket_ownership_controls.ownership_config,
    aws_s3_bucket_public_access_block.public_access
   ]

  key          = var.css_file_key
  acl          = var.css_file_acl
  source       = var.css_file_path
  content_type = var.css_file_type
}

# JavaScript
resource "aws_s3_object" "script" {
  bucket = aws_s3_bucket.bucket.id

  depends_on = [ 
    aws_s3_bucket_ownership_controls.ownership_config,
    aws_s3_bucket_public_access_block.public_access
   ]

  key          = var.script_file_key
  acl          = var.script_file_acl
  source       = var.script_file_path
  content_type = var.script_file_type
}

# favicon
resource "aws_s3_object" "favicon" {
  bucket = aws_s3_bucket.bucket.id

  depends_on = [ 
    aws_s3_bucket_ownership_controls.ownership_config,
    aws_s3_bucket_public_access_block.public_access
   ]

  key          = var.favicon_file_key
  acl          = var.favicon_file_acl
  source       = var.favicon_file_path
  content_type = var.favicon_file_type
}

# Versioning
resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.bucket.id

  versioning_configuration {
    status     = var.versioning_status
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
