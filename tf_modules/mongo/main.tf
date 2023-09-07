resource "random_string" "random_suffix" {
  length  = 10
  special = false
  upper   = false
}

variable "instance" {
  default = "small"
}

variable "dbname" {
  default = "default"
}

output "host" {
  value = "${var.dbname}.mydatabase.com"
}

output "user" {
  value = "mongo"
}

output "password" {
  sensitive = true
  value     = random_string.random_suffix.result
}
