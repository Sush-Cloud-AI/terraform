terraform {
  backend "s3" {
    bucket = "sush-rem-state-file"
    key    = "statefile/terraform.tfstate"
    region = "us-east-1"
  }
}
