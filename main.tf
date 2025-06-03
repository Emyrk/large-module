terraform {
  required_version = ">= 1.0"

  required_providers {
    coder = {
      source  = "coder/coder"
      version = ">= 2.5"
    }
  }
}


variable "order" {
  default = 0
}

data "coder_parameter" "so_large" {
  name         = "so_large"
  display_name = "Can you see this?"
  description  = "This parameter comes with in a very large terraform module."
  type         = "bool"
  default      = "false"
  order        = var.order
}