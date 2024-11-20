terraform {
  backend "s3" {
    bucket = "week6-sk-bucket-terraform"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-lock1"
    encrypt = true
  }
}


