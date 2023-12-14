# provider "aws" {
#   access_key = "PUT-ACCESS-KEY"
#   secret_key = "PUT-SECRET-KEY"
#   region = "us-east-1"
# }

#terraform lifecycle: terraform init, terraform plan, terrafrom apply, terraform destroy

provider "aws" {}

# resource "aws_instance" "myec2" {
#   ami = "ami-0230bd60aa48260c6"
#   instance_type = "t2.micro"
# }

