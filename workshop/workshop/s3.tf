resource "aws_s3_bucket" "s3-1" {
  bucket = "sky-s3-main10"

  tags = { 
    Environment    = "terraformChamps"
    Owner          = "Sama"
  }

  force_destroy       = true    # force destroy even if the bucket not empty
}
# Create a Directory under created S3 called "logs".
resource "aws_s3_object" "log_directory" {
  bucket = "sky-s3-main10"
  key    = "logs/"
}
