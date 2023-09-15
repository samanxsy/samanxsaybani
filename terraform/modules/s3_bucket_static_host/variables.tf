# # Variables
# # # # # # #

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type = string
  default = "s3-bucket"
}

variable "public_access_block" {
  type = bool
}

variable "public_policy_block" {
  type = bool
}

variable "public_acl_ignore" {
  type = bool
}

variable "public_buckets_restrict" {
  type = bool
}

variable "index_file_name" {
  description = "Name of the index document"
  type = string
  default = "index.html"
}


# # Objects
# Index
variable "index_file_key" {
  type = string
  default = "index.html"
}

variable "index_file_path" {
  description = "path to the index.html file"
  type = string
}

variable "index_file_type" {
  type = string
  default = "text/html"  
}

# Styles
variable "css_file_key" {
  type = string
  default = "index.html"
}

variable "css_file_path" {
  description = "path to the index.html file"
  type = string
}

variable "css_file_type" {
  type = string
  default = "text/css"  
}

# Scripts
variable "script_file_key" {
  type = string
  default = "index.html"
}

variable "script_file_path" {
  description = "path to the index.html file"
  type = string
}

variable "script_file_type" {
  type = string
  default = "application/javascript"
}

# favicon
variable "favicon_file_key" {
  type = string
  default = "index.html"
}

variable "favicon_file_path" {
  description = "path to the index.html file"
  type = string
}

variable "favicon_file_type" {
  type = string
  default = "image/png"
}

#
# Versioning
variable "versioning_status" {
  description = "Status of the versioning for the S3 bucket"
  type = string
}

variable "mfa_status" {
  description = "Status of the multi factor authentication for deleting objects in theS3 bucket"
  type = string
}

#
# LifeCycle
variable "lifecycle_rule_id" {
  description = "The ID for the lifecycle rule"
  type = string
  default = "Archiving"
}

variable "lifecycle_status" {
  description = "The Status for the lifecycle, weather 'Enabled' or 'Desabled'"
  type = string
  default = "Enabled"
}

variable "transition_days" {
  description = "Number of days which after the transition happens"
  type = number
  default = 100
}

variable "transition_storage_class" {
  description = "The Storage class the data will be transfered to after the give transition days period"
  type = string
  default = "INTELLIGENT_TIERING"
}


variable "bucket_tags" {
  description = "Tags to identify the bucket for several purposes"
  type = map(string)
  default = {
    Name = "s3-bucket"
    Environment = "Dev"
  }
}