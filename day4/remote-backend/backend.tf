terraform {
  backend "s3" {
    bucket = "day4-terraform-training"
    key    = "security/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-locking-day4"
  }
}
