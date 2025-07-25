variable "resource_group_name" {
  default = "demo-rg" ## inserted value
  type    = string
}
variable "resource_group_location" {
  default = "eastus" ## inserted value
  type    = string
}

variable "tags" {
  description = "The tags to associate with your project"
  type        = map(string)

  default = {
    tag1 = ""
    tag2 = ""
  }
}
