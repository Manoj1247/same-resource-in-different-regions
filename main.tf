provider "aws" {
  region = "us-east-1" # Default region
}

provider "aws" {
  alias  = "us_west"
  region = "us-west-1"
}

resource "aws_s3_bucket" "bucket_us_east" {
  bucket = "my-bucket-12451996-us-east"
  acl    = "private"
}

resource "aws_s3_bucket" "bucket_us_west" {
  provider = aws.us_west
  bucket   = "my-bucket-12451996-us-west"
  acl      = "private"
}
