resource "aws_s3_bucket" "bucket" {
  bucket = "test_projectq"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "test"
  }
}

provider "aws" {
  version = "~> 2.0"
  region  = "${var.aws_region}"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}
