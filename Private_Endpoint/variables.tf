variable "private_endpoint_name" {
  description = "Name of private endpoint"
}

variable "resource_group_name" {
  description = "Name of the resource group where the storage account belongs"
}

variable "location" {
  description = "Azure region where the storage account will be located"
}

variable "private_service_connection_name" {
  description = "Name of private service connection"
}

variable "private_connection_resource_id" {
  description = "Azure private connection resource"
  
}

variable "subnet_id" {
  description = "subnet of virtual network"
}

variable "subresource_names" {
  description = "Name of subresource"
}
