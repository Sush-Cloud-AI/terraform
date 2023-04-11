resource "aws_instance" "demo" {
  ami           = "ami-0db68915b3e8a3ce3"  ## argument
  instance_type = "t2.micro"

  tags = {
    Name = "first-ec2"
  }
}

output "private_ip" {
    value = aws_instance.demo.private_ip   ## private_ip attribute
  
}