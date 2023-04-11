resource "aws_instance" "demo" {
  ami           = "ami-0db68915b3e8a3ce3"  ## argument
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id ]

  tags = {
    Name = "first-ec2"
    ENV = "dev"
    Project = "cc"
    
  }
}

output "private_ip" {
    value = aws_instance.demo.private_ip   ## private_ip attribute
  
}

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