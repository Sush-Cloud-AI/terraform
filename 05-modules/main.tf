# calling ec2 module
module "ec2" {
  source = "./ec2"
  sg = module.sg.sgid           # step2: passing sg info to the module into ec2 
  
}
# calling sg module
module "sg" {
  source = "./sg"
  
}

## terraform modules sources can be github, s3 , local ..etc  ..terraform sources