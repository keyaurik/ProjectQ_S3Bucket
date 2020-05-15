resource "aws_s3_bucket" "log_bucket" {
  bucket = "projectqkdk_log_bucket"
  acl    = "log-delivery-write"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "projectqkdk"
  acl    = "private"

  logging {
    target_bucket = "${aws_s3_bucket.log_bucket.id}"
    target_prefix = "log/"
  }
}
