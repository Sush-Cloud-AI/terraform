module "ec2" {
  source = "./ec2"
}

module "sg" {
    source = "./sg"
  
}

output "pub-ip" {
    value = aws_instance.demo.public_ip
  
}