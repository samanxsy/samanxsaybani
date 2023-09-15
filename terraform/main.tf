# Main Terraform Configs
#
# Project: My Portfolio Terminal
#
# Author: Saman Saybani


# Static Web Host S3 Bucket
module "static_web_host_s3" {
  source = "./modules/s3_bucket_static_host"
	
	# Name
	bucket_name = "samanxsaybani"

	# ACL
	acl_state = "public-read"

	# Versioning
	versioning_status = "Enabled"
	mfa_status = "Enabled"

	# LifeCycle
	lifecycle_rule_id = "Archiving"
	lifecycle_status = "Enabled"
	transition_days = "100"
	transition_storage_class = "INTELLIGENT_TIERING"

	# Tags
	bucket_tags = {
		Name = "portfolio-terminal"
		Environment = "Prod"
	}
}
