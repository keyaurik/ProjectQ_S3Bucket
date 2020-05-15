resource "aws_s3_bucket" "bucket" {
  bucket = "projectqkdk"
  acl    = "private"
  tags = {
    Name        = "My bucket"
    Environment = "test"
  }
}
  "Version":"2012-10-17",
  "Statement":[
    {
      "Sid":"PublicRead",
      "Effect":"Allow",
      "Principal": "*",
      "Action":["s3:GetObject"],
      "Resource":["arn:aws:s3:::projectqkdk"]
    }
  ]
