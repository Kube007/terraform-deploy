provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "reddy-cr7-testbucket"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}



