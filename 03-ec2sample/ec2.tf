# resource "aws_instance" "demo" {
#   ami           = "ami-0ef141c0ad615f89f"  ## argument
#   instance_type = "t3.micro"

#   tags = {
#     Name = "first-ec2"
#     ENV = "dev"
#     Project = "cc"
    
#   }
# }

# }

# output "private_ip" {
#     value = aws_instance.demo.private_ip   ## private_ip attribute
  
# }

# # Adding security group

# resource "aws_security_group" "allow_ssh" {
#   name        = "allow_SSH"
#   description = "Allow SSH inbound traffic"

#   ingress {
#     description      = "SSH to VPC"
#     from_port        = 22
#     to_port          = 22
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]

#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "allow_ssh"
#   }
# }

data "aws_ami" "base-ami" {
  most_recent      = true
  name_regex       = "devops-ami"
  owners           = ["self"]

}

resource "aws_instance" "demo" {
  count = length(var.instance)
  ami           = data.aws_ami.base-ami.image_id  ## argument
  instance_type = "t2.micro"

  tags = {
    Name = "${var.instance[count.index]}"
    
  }
}

variable "instance" {
  default = ["catalogue", "user", "cart"]
  
}

output "priv_ip" {
  value = aws_instance.demo[var.instance[2]].private_ip
  
}