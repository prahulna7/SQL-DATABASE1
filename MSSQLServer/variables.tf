variable "resource_group" {
  description = "Enter resource group for create action group and alert."
  type        = string
  default     = "my-rg01"
}
variable "azurerm_mssql_server" {
  description = "Name of the MS SQL Server"
  type        = string
  default     = "mssqlserver"
}
variable "mssql_admin_username" {
  description = "The administrator username of the SQL Server."
  type        = string
  default     = "adminpassword"
}
variable "mssql_password" {
  description = "The administrator password of the SQL Server."
  type        = string
  sensitive   = true
  default = "adminpassword@123"
}
variable "server_version" {
  description = "The version for the database server. Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server)."
  type        = string
  default     = "12.0"
}
variable "minimum_tls_version" {
  description = "Transport Layer Security min of 1.2"
  type        = number
  default     = "1.2"
}
variable "tags" {
  description = "Map of tags to add to create resources"
  type        = map(string)
  default     = {
    source = "terraform"
    Environment = "dev"
    Owner       = "test-user"
    }
} 