module "frontend" {
  source = "./ec2"
  COMPONENT = "frontend"
  APP_VERSION ="0.0.1"

}

module "mongodb" {
  source = "./ec2"
  COMPONENT = "mongodb"
  APP_VERSION ="null"

}

module "catalogue" {
    source = "./ec2"
    COMPONENT = "catalogue"
    APP_VERSION ="0.0.7"
    
} 




# module "roboshop" {
#     for_each = var.ALL_COMPONENTS  #  for_each is like a loop will run for all variables delcred
#     source = "./ec2"
#     COMPONENT = each.key
#     APP_VERSION = each.value.app_version
# }
