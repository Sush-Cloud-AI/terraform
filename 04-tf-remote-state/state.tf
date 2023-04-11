terraform {
  backend "s3" {
    bucket = "sush-remote-state-file"
    key    = "statefile/terraform.tfstate"
    region = "us-east-1"
  }
}
