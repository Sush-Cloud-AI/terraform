module "frontend" {
    for_each = var.ALL_COMPONENTS  #  for_each is like a loop will run for all variables delcred
    source = "./ec2"
    COMPONENT = each.key
    APP_VERSION = each.value.app_version
}
