resource "random_string" "random_suffix" {
  length  = 10
  special = false
  upper   = false
}

variable "config" {
  default = ""
}
variable "redirect_uri" {
  default = "default"
}

variable "issuer" {
  default = "default"
}
output "issuer" {
  value = var.issuer
}

output "redirect_uri" {
  value = "https://${var.redirect_uri}"
}

output "client_id" {
  value = "okta"
}

output "client_secret" {
  sensitive = true
  value     = random_string.random_suffix.result
}
