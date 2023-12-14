provider "aws" {}

variable "istest" {
    default = false
    type = bool
}

resource "aws_instance" "dev" {
  ami = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  count = var.istest == true ? 3 : 0
}

resource "aws_instance" "prod" {
  ami = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  count = var.istest == false ? 1 : 0
}
