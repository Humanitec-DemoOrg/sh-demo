terraform {
  required_providers {
    humanitec = {
      source = "humanitec/humanitec"
    }
  }
}

provider "humanitec" {
  org_id = var.humanitec_organization
  token  = var.token
  host   = "https://api.humanitec.io/"
}

variable "humanitec_organization" {}

variable "token" {}
