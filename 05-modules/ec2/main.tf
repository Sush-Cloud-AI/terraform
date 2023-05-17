resource "aws_instance" "demo" {
  ami           = data.aws_ami.base-ami.image_id  ## argument
  instance_type = "t2.micro"
  vpc_security_group_ids = [ var.sg]

}

variable "sg" {
  
}

output "pub-ip" {
    value = aws_instance.demo.public_ip
  
}