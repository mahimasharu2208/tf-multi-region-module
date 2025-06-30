variable "bucket_name_use1" {
  description = "S3 bucket name for us-east-1"
  type        = string
  default     = "my-module-bucket-east"
}

variable "bucket_name_usw2" {
  description = "S3 bucket name for us-west-2"
  type        = string
  default     = "my-module-bucket-west"
}
