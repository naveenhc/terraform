provider "aws" {
  
}

resource "aws_instance" "myec2" {
  ami = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
}

resource "aws_instance" "myec2test" {
  ami = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
}

resource "aws_eip" "lb" {
  vpc = true
}
