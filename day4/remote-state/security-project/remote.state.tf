data "terraform_remote_state" "eip" {
  backend = "s3"

  config = {
    bucket = "remote-state-bucket-day4"
    key    = "network/eip.tfstate"
    region = "us-east-1"
  }
}