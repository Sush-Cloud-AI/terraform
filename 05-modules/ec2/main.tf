resource "aws_instance" "demo" {
  ami           = "ami-0db68915b3e8a3ce3"  ## argument
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id ]

}