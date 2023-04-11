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
    value = "Welcome to ${var.list-ex[0]} Training , Trainer Name is ${var.list-ex[3]} and the training duration is ${var.list-ex[1]} hours."

  
}


### Map Variable

variable "map-var" {
    default = {
        Class = "Devops",
        Timing = "7AM",
        Duration = 85
    }  
}

output "map-var" {
    value = " Welcome to ${var.map-var["Class"]} and the timings are ${var.map-var["Timing"]} and the duaration is ${var.map-var["Duration"]}."
  
}

## terraform.tfvars varibales demo

variable "state" {}
variable "country" {}

output "state-country-name" {
  value = "Name of the state where is reside is ${var.state} and my county is ${var.country}."
}


## terraform apply -auto-approve -var country=Bharath ... passing variables from runtime 
## runtime varibales will have higher priority than .tfvars
  
