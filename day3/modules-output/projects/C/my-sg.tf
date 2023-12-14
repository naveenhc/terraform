module "sgmodule" {
  source = "../../modules/sg"
}

resource "aws_instance" "web" {
  ami = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  vpc_security_group_ids = [module.sgmodule.sg_id]
}
