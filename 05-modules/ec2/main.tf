resource "aws_instance" "demo" {
  ami           = "ami-0ef141c0ad615f89f"  ## argument
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.sg]

  tags = {
    Name = "first-ec2-mod"

    
  }
}

variable "sg" {            ## decleare an empty variable of the value 
  
}

output "publicip" {
  value = aws_instance.demo.public_ip
  
}