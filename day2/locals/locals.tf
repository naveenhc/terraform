provider "aws" {
}

locals {
  common_tags = {
    Owner   = "Backend Team"
    service = "backend"
  }
}

resource "aws_instance" "myec2" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  tags          = local.common_tags
}

resource "aws_instance" "testec2" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  tags          = local.common_tags
}
