variable "name" {
  type        = string
  description = "Name of the virtual network"
  default     = ""
}

variable "resource_group_name" {
  type        = string
  description = "The name of an existing resource group where the storage account lives. When no storage account name is given than the resource group name must be in the Sogeti naming format."
}

variable "addressSpace" {
  type    = list(any)
  default = ["10.1.0.0/16"]
}

variable "environment" {
  type        = string
  description = "The environment denotation.d=Development, t=Test, a=Acceptance, p=Production, dt=Dev-Test, ap=Acceptance-Production"
}

variable "zone" {
  type        = string
  description = "Enter abbreviation for Zone. e=External, i=Internal, m=Management"
}

variable "tags" {
  type        = map(any)
  description = "A mapping of tags to assign to the resources."
  default     = {}
}
