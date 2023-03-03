resource "aws_s3_bucket" "aman_bucket"{
    bucket = var.bucket
    tags = var.common_tags
}