variable "name" {
  type        = string
  description = "Name of the Subnet"
  default     = ""
}

variable "resource_group_name" {
  type        = string
  description = "The name of an existing resource group. When no subnet name is given than the resource group name must be in the Sogeti naming format."
}

variable "network_security_group_id" {
  type        = string
  description = "The id of an existing Network Security Group."
}

variable "virtual_network_name" {
  type        = string
  description = "The name of an existing Virtual Network."
}

variable "subnet_addressSpace" {
  type    = string
  default = "10.1.0.0/24"
}
