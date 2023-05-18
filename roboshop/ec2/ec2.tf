resource "aws_spot_instance_request" "cheap_worker" {
  ami             = data.aws_ami.base-ami.image_id
  instance_type   = "t3.micro"
  wait_for_fulfillment = true
  vpc_security_group_ids = [ aws_security_group.allow_all.id]


  tags = {
    Name = "${var.COMPONENT}"
  }

}

resource "null_resource" "null" {
 
  triggers = {
    a = timestamp() # compares with time change and triggers the provisioner
  }

provisioner "remote-exec" {

      connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = aws_spot_instance_request.cheap_worker.private_ip
  }
    inline = [
     "ansible-pull -U https://github.com/Sush-Cloud-AI/ansible.git roboshop.yml -e COMPONENT=${var.COMPONENT} -e ENV=dev -e TAG_NAME=${var.APP_VERSION}"
    ]
  }


}















