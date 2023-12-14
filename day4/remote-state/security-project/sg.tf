resource "aws_security_group" "allow_tls" {
  name = "allow_tls"

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["${data.terraform_remote_state.eip.outputs.eip_addr}/32"]
  }
}