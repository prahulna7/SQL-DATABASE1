variable "prefix" {
  description = "The prefix which is used for most resources in this module"
}
variable "location" {
  type        = string
  description = "The location of the The resource group."
  default     = "West US"
}
variable "resource_group_name" {
  type        = string
  description = "The name of an existing resource group where the storage account lives. When no NSG name is given than the resource group name must be in the Sogeti naming format."
}

variable "vnet_range" {
  description = "The VNet range for the VNet containing the Managed Instance."

  default = "10.0.0.0/16"
}

variable "subnet_range" {
  description = "The subnet range for the subnet containing the Managed Instance."

  default = "10.0.0.0/24"
}

variable "dns_zone_partner_id" {
  description = "The possible DNS Zone Partner Managed Instance."

  default = ""
  
}
  variable "mssql_admin_username" {
  description = "The administrator username of the SQL Server."
  type        = string
}
variable "mssql_password" {
  description = "The administrator password of the SQL Server."
  type        = string
  sensitive   = true
}
variable "private_connection_resource_id" {
  description = "Privare endpoint Resource ID"
        
}