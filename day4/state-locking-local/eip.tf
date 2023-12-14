# resource "aws_eip" "lb" {
#   vpc = true
# }

provider "aws" {}

resource "time_sleep" "wait_200_seconds" {
  create_duration = "200s"
}