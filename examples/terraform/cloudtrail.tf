resource "aws_cloudtrail" "foobar" {
  name                          = "tf-trail-foobar"
  s3_bucket_name                = aws_s3_bucket.foo.id
  s3_key_prefix                 = "prefix"
  include_global_service_events = false
}

resource "aws_s3_bucket" "foo" {
  bucket        = "tf-test-trail"
  force_destroy = true
}

resource "aws_s3_bucket_lifecycle_configuration" "foo" {
  bucket = aws_s3_bucket.foo.id

  rule {
    id     = "rule-1"
    status = "Enabled"
    expiration {
      days = 365
    }
  }
}
