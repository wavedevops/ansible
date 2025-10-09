variable "x" {
  default = [
    "name",
    "true",
    10
  ]
}
output "map" {
  value = var.x
}

output "map-a" {
  depends_on = [var.x]
  value = var.x[1]
}
