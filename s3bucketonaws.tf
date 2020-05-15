resource "aws_s3_bucket" "b" {
  bucket = "projectqkdk"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
