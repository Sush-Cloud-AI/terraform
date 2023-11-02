terraform {
  backend "s3" {
    bucket = "my-bucket-tfstate-sus"
    key    = "statefile1/terraform.tfstate"
    region = "us-east-1"
  }
}

variable "howmany" {
  default = 2
  
}