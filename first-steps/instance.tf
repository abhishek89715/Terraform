provider "aws" {
  access_key = "AKIAS3Q7HNYFXX4GIZFL"
  secret_key = "zB+PqfNxbAySuxaS423nxa4iZ2oTMHb558+09t1N"
  region     = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c1a7f89451184c8b"
  instance_type = "t2.micro"
}

