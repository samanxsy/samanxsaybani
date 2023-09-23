# Main Terraform Configs
#
# Project: My Portfolio Terminal
#
# Author: Saman Saybani


# Static Web Host S3 Bucket
module "s3_bucket_static_host" {
  source = "./modules/s3_bucket_static_host"

  # Name
  bucket_name = "samanxsaybani"

  # ACL
  public_access_block     = false
  public_policy_block     = false
  public_acl_ignore       = false
  public_buckets_restrict = false

  # Ownership
  object_ownership_status = "BucketOwnerPreferred"

  # BUcket ACL
  bucket_access_control_status = "public-read"

  # Index file
  index_file_name = "index.html"

  # HTML object
  index_file_key  = "index.html"
  index_file_acl  = "public-read"
  index_file_path = "../static_src/index.html"
  index_file_type = "text/html"

  # CSS
  css_file_key  = "styles.css"
  css_file_acl  = "public-read"
  css_file_path = "../static_src/styles.css"
  css_file_type = "text/css"

  # JavaScript
  script_file_key  = "scripts.js"
  script_file_acl  = "public-read"
  script_file_path = "../static_src/scripts.js"
  script_file_type = "application/javascript"

  # favicon
  favicon_file_key  = "icons8-cloud-16.png"
  favicon_file_acl  = "public-read"
  favicon_file_path = "../static_src/icons8-cloud-16.png"
  favicon_file_type = "image/png"

  # Versioning
  versioning_status = "Enabled"
  mfa_status        = "Disabled"

  # LifeCycle
  lifecycle_rule_id        = "Archiving"
  lifecycle_status         = "Enabled"
  transition_days          = "90"
  transition_storage_class = "INTELLIGENT_TIERING"

  # Tags
  bucket_tags = {
    Name        = "portfolio-terminal"
    Environment = "Prod"
  }
}
