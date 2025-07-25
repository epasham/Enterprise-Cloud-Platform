variable "environment" {}
variable "resource_group" {}

variable "name" {
  description = "The name of the ACR"
  type        = string
}

variable "location" {
  description = "Azure region of the ACR"
  type        = string
}

variable "sku" {
  description = "The SKU of the ACR"
  type        = string
}

variable "admin_enabled" {
  description = "Admin access enabled"
  type        = bool
}
