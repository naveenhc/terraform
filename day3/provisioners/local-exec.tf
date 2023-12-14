provider "aws" {}

resource "aws_instance" "myec2" {
  ami = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  key_name = "terraform-key"

  connection {
    type = "ssh"
    user = "ec2-user"
    private_key = file("./terraform-key.pem")
    host = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [ 
        "sudo dnf install nginx -y",
        "sudo systemctl start nginx"
     ]
  }
}