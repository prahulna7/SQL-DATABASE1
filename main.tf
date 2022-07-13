terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.12.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "MSSQLServer" {
    source = "./MSSQLServer"
}

module "SQL_Database" {
  source           = "./SQL_Database"
  MSSQLServerName  = module.MSSQLServer.mssql_server_name
}
module "Log_Analytics_Workspace" {
  source           = "./Log_Analytics_Workspace"
}
module "SQL_Managed_Instance" {
  source           = "./SQL_Managed_instance"
  MSSQLServerName  = module.SQL_Managed_Instance_name
}
module "Private_EndPoint" {
 source = "./Private_Endpoint"
 private_connection_resource_id = module.MSSQLServer.MSSQLServer_ResourceID
 azurerm_mssql_server = module.MSSQLDatabase.azurermmssqlserver
}
module "Cosmos_db_database" {
  source           = "./Cosmos_db_database"
}
module "Route_table_module" {
  source           = "./Route_table_module"
}
module "SubNet_module" {
  source           = "./SubNet_module"
}
module "Subnet_route_table_association" {
  source           = "./Subnet_route_table_association"
}
module "Cosmos_db" {
  source           = "./Cosmos_db"
}