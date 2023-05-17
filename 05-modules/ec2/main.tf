resource "aws_instance" "demo" {
  ami           = "ami-0db68915b3e8a3ce3"  ## argument
  instance_type = "t2.micro"
  vpc_security_group_ids = [ var.sg]

}

variable "sg" {
  
}

output "pub-ip" {
    value = aws_instance.demo.public_ip
  
}