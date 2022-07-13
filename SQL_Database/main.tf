provider "azurerm" {
  features {}
}
data "azurerm_resource_group" "main" {
  name = var.resource_group
}

data "azurerm_storage_account" "StorageAccount" {
  name                = var.storage_account_name
  resource_group_name = data.azurerm_resource_group.main.name
}

#SQL DB with Backup
resource "azurerm_mssql_database" "sqldbb" {
  name                = "${var.applicationname}sql-dbd-${var.env}"
  location            = data.azurerm_resource_group.main.location
  resource_group_name = data.azurerm_resource_group.main.name
  server_name         = var.MSSQLServerName

  threat_detection_policy {
    state                      = "Enabled"
    email_addresses            = ["dbgrl93@gmail.com"]
    retention_days             = "30"
    storage_account_access_key = "${azurerm_storage_account.StorageAccount.primary_access_key}"
    storage_endpoint           = "${azurerm_storage_account.StorageAccount.primary_blob_endpoint}"
    use_server_default         = "Enabled"
  }

  provisioner "local-exec" {
    command     = "Set-AzureRmSqlDatabaseBackupLongTermRetentionPolicy -ResourceGroupName ${azurerm_resource_group.test2.name}  -ServerName ${azurerm_sql_server.test2.name} -DatabaseName 'sqldbsrvrtf01' -WeeklyRetention P12W -YearlyRetention P5Y -WeekOfYear 16 "
    interpreter = ["PowerShell", "-Command"]
  }
    tags = var.tags

}


