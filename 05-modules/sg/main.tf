# Adding security group

resource "aws_security_group" "allow_ssh" {
  name        = "allow_SSH"
  description = "Allow SSH inbound traffic"

  ingress {
    description      = "SSH to VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  ingress {
    description      = "http"
    from_port        = 80 
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}
# step 1 to declare the output  to use to pass it into ec2
output "sgid" {
  value = aws_security_group.allow_ssh.id
  
}