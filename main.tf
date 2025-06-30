terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "use1"
}

provider "aws" {
  region = "us-west-2"
  alias  = "usw2"
}

module "bucket_use1" {
  source      = "./modules/s3_bucket"
  bucket_name = var.bucket_name_use1

  providers = {
    aws = aws.use1
  }
}

module "bucket_usw2" {
  source      = "./modules/s3_bucket"
  bucket_name = var.bucket_name_usw2

  providers = {
    aws = aws.usw2
  }
}