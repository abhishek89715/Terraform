resource "aws_s3_bucket" "terraform-state" {
  bucket = "terraform-state-${random_string.mantur.result}"
  acl    = "private"

  tags = {
    Name = "Terraform state"
  }
}

resource "random_string" "mantur" {
  length  = 8
  special = false
  upper   = false
}

