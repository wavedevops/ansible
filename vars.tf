variable "x" {
  default = [
    "name",
    "true",
    10
  ]
}
output "x1" {
  value = var.x
}
