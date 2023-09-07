terraform {
  backend "s3" {
    bucket = "bucket-tmdl-tfstate"
    key    = "default-infrastructure.tfstate"
  }
}

resource "aws_s3_bucket" "tfstate_bucket" {
  bucket = "bucket-tmdl-tfstate"
  acl    = "private"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}