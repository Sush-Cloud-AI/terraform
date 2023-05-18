terraform {
  backend "s3" {
    bucket = "sush-rem-state-file"
    key    = "roboshop/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
    region = "us-east-1"
  
}