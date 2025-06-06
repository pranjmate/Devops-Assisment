terraform {
  required_version = "1.7.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

resource "aws_s3_bucket" "devops_bucket" {
  bucket = "pranjal-devops-assoc-bucket"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "DevOps S3 Bucket"
    Environment = "Dev"
  }
}
