terraform {
  backend "s3" {
    bucket = "my-bucket-tfstate-sus"
    key    = "statefile2/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
    region = "us-east-1"
  
}