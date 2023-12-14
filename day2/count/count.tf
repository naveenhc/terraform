provider "aws" {}

variable "elb_names" {
  type = list
  default = ["dev-lb","stage-lb","prod-lb"]
}

resource "aws_iam_user" "user" {
  name = var.elb_names[count.index]
  count = 3
  path = "/system/"
}