# calling ec2 module
module "ec2" {
  source = "./ec2"
  
}
# calling sg module
module "sg" {
  source = "./sg"
  
}

## terraform modules sources can be github, s3 , local ..etc  ..terraform sources