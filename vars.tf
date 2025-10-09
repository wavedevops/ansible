# map
variable "map" {
  default = {
    Name = "prasad"
    Age = 25
    Qualification = "undergraduate"
  }
}

output "print_all_variables" {
  value = var.map
}

output "print_particular_variables" {
  value = var.map["Qualification"]
}