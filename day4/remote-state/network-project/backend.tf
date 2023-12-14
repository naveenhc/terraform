terraform {
  backend "s3" {
    bucket = "remote-state-bucket-day4"
    key    = "network/eip.tfstate"
    region = "us-east-1"
  }
}
