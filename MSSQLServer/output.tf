output "mssql_server_name" {
  description = "Server name of the Azure SQL Database created."
  value       = azurerm_mssql_server.mssql.name
}
output "mssql_server_location" {
  description = "Location of the Azure SQL Database created."
  value       = azurerm_mssql_server.mssql.location
}
output "mssql_server_version" {
  description = "Version the Azure SQL Database created."
  value       = azurerm_mssql_server.mssql.version
}

output "MSSQLServer_ResourceID" {
  value = azurerm_mssql_server.mssql.id
}

output "azurermmssqlserver" {
  value = azurerm_mssql_server.mssql.name
}