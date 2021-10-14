variable "AWS_REGION" {
  default = "ap-south-1"
}
variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AMIS" {
  type = map(string)
  default = {
    ap-south-1 = "ami-0c1a7f89451184c8b"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-0d729a60"
  }
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}
variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}


