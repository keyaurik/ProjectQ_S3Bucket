resource "aws_s3_bucket" "b" {
  bucket = "projectq"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "test"
  }
