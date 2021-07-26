variable "s3_bucket_id" {
  default     = "mybucket"
  description = "The bucket ID of the S3 bucket used to store the files"
}

variable "s3_bucket_name" {
  default     = "My bucket"
  description = "The bucket name of the S3 bucket used to store the files"
}

variable "s3_origin_id" {
  default     = "myS3Origin"
  description = "The origin ID of the S3 bucket used to store the files"
}

variable "s3_origin_access_identity" {
  default     = "origin-access-identity/cloudfront/ABCDEFG1234567"
  description = "The origin access identity of the S3 bucket used to store the files"
}

variable "s3_distribution_comment" {
  default     = "Some comment"
  description = "The comment for the S3 distribution used to serve the files"
}

variable "s3_distribution_default_root_object" {
  default     = "index.html"
  description = "The default root object from the bucket used in the S3 distrubution"
}

variable "s3_distribution_logging_bucket" {
  default     = "mylogs.s3.amazonaws.com"
  description = "The bucket for logging the S3 distrubution"
}

variable "s3_distribution_logging_prefix" {
  default     = "myprefix"
  description = "The prefix for logs in the S3 distrubution"
}

variable "s3_distribution_aliases" {
  default     = ["mysite.example.com", "yoursite.example.com"]
  description = "Aliases for the S3 distrubution"
}

variable "environment" {
  default     = "development"
  description = "Environment for the the S3 distrubution"
}
