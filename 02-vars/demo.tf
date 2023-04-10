variable "sample" {
    default = "Hello world"
}

output "sample-op" {
    value = var.sample
  
}

output "sample-op1" {
    value = "value is ${var.sample}"
  
}

## default varible type
variable "number" {
    default = 100

}

output "number" {
  value = var.number

}
## list variable
variable "list-ex" {
    default = [
        "DevOps",
        100,
        false,
        "verma"
    ]
  
}

output "list-ex" {
    value = "Welcome to ${var.list-ex[0]} Training , Trainer Name is ${var.list-ex[3]} and the training duration is${var.list-ex[1]} hours "
  
}