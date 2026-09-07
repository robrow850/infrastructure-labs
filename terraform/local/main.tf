terraform {
  required_version = ">= 1.4, < 2.0"
}

variable "lab_name" {
  type    = string
  default = "portfolio-local-lab"
  validation {
    condition     = can(regex("^[a-z0-9-]+$", var.lab_name))
    error_message = "Use lowercase letters, digits, and hyphens."
  }
}

# Built-in resource: records input in local state, creates no cloud resources.
resource "terraform_data" "lab" {
  input = { name = var.lab_name, purpose = "offline-practice" }
}
output "lab" {
  value = terraform_data.lab.output
}
