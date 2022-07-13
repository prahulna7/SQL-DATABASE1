variable "resource_group" {
  description = "Enter resource group for create action group and alert."
  type        = string
}
variable "MSSQLServerName" {
  description = "MS SQL Server Name"
}
variable "applicationname" {
  description = "Name of the applicationname"
  type        = string
}
variable "env" {
  description = "Name of the environment"
  type        = string
}
# variable "name" {
#   description = "Name of the Resources"
#   type        = string
# }
variable "storage_account_name" {
  description = "Name of the existing storage account"
  type        = string

}

variable "storage_account_access_key_is_secondary" {
  description = "Specifies whether storage_account_access_key value is the storage's secondary key."
  type        = bool
  default     = true
}
variable "retention_in_days" {
  description = "Days to retain "
  type        = number
  default     = "6"
}
variable "tags" {
  description = "Map of tags to add to create resources"
  type        = map(string)
  default     = {}
}

