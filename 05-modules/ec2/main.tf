resource "aws_instance" "demo" {
  ami           = data.aws_ami.base-ami.image_id  ## argument
  instance_type = "t2.micro"
  vpc_security_group_ids = [ var.sg]

provisioner "local-exec" {
    command = <<EOF
    sleep 60
    cd /home/centos/ansible
    ansible-playbook ${self.public_ip} -u centos -e ansible_password=DevOps321 roboshop-push.yml -e COMPONENT=frontend -e TAG_NAME=0.0.1 -e ENV=dev
    
    EOF
  }

}

variable "sg" {
  
}

output "pub-ip" {
    value = aws_instance.demo.public_ip
  
}