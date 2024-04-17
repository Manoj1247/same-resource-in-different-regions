resource "aws_s3_bucket" "example" {
  bucket   = "${var.name_prefix}bucket-12451996"
  tags = {
    Name = "${var.name_prefix}s3-bucket"
  }
}
