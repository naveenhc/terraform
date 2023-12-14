provider "aws" {}

variable "sg_ports" {
  type = list(number)
  description = "list of ingress ports"
  default = [443,80,53,8300]
}

resource "aws_security_group" "dynamicsg" {
  name = "dynamic-sg"

  dynamic "ingress" {
    for_each = var.sg_ports
    iterator = port
    content {
      from_port = port.value
      to_port = port.value
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}