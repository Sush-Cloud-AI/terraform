resource "aws_instance" "demo" {
  ami           = "ami-0ef141c0ad615f89f"  ## argument
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.]

  tags = {
    Name = "first-ec2-mod"

    
  }
}

