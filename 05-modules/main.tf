module "ec2" {
  source = "./ec2"
  sg = module.sg.sg_id
}

module "sg" {
    source = "./sg"
  
}

output "pub-ip" {
    value = module.ec2.pub-ip
  
}

## terraform modules sources can be github, s3 , local ..etc  ..terraform sources