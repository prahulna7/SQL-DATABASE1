output "database_name" {
  description = "Database name of the Azure SQL Database created."
  value       = azurerm_mssql_database.sqldbb.name
}
output "sql_server_name" {
  description = "Server name of the Azure SQL Database created."
  value       = azurerm_mssql_database.sqldbb.name
}
output "sql_server_location" {
  description = "Location of the Azure SQL Database created."
  value       = azurerm_mssql_database.sqldbb.location
}

output "sql_server_version" {
  description = "Version the Azure SQL Database created."
  value       = azurerm_mssql_database.sqldbb.version
}
