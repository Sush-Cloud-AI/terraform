data "aws_ami" "base-ami" {
  most_recent      = true
  name_regex       = "ami-with-ansible"
  owners           = ["self"]

}

## datasource to fetch the ami id dynamically ... 