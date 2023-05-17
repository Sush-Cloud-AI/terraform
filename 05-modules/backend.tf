terraform {
  backend "s3" {
    bucket = "sush-rem-state-file"
    key    = "modules/terraform.tfstate"
    region = "us-east-1"
  }
}
