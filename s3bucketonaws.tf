resource "aws_s3_bucket" "bucket" {
  bucket = "projectqtestbucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
