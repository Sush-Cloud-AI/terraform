resource "aws_instance" "demo" {
  ami           = data.aws_ami.base-ami.image_id  ## argument
  instance_type = "t2.micro"
  vpc_security_group_ids = [ var.sg]

 

  provisioner "remote-exec" {

      connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.public_ip
  }
    inline = [
     "ansible-pull -U https://github.com/Sush-Cloud-AI/ansible.git roboshop.yml -e COMPONENT=frontend -e ENV=dev -e TAG_NAME=0.0.1"
    ]
  }

}

variable "sg" {
  
}

output "pub-ip" {
    value = aws_instance.demo.public_ip
  
}