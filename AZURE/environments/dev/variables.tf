variable "name" {
  default     = ""
  type        = string
  description = "The name of the deployment or resource. (e.g., AKS cluster name, resource group name)"
}

variable "environment" {
  default     = "dev"
  type        = string
  description = "The environment in which the resources are deployed."
}

variable "tags" {
  description = "The tags associated with your project."
  type        = map(string)

  default = {
    env = "dev"
    org = "infy"
  }
}

variable "create_resource_group" {
  description = "To create a new resource group."
  type        = bool
  default     = true
}

variable "resource_group_name" {
  default     = ""
  type        = string
  description = "The name of the Azure resource group."
}

variable "resource_group_location" {
  default     = ""
  type        = string
  description = "The location of the Azure resource group."
}
