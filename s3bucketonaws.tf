resource "aws_s3_bucket" "bucket" {
  bucket = "test_projectq"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "test"
  }
}
