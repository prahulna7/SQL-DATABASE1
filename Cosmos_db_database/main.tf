
# ---- create cosmos db sql database 

resource "azurerm_cosmosdb_sql_database" "cosmossqldatabase" {
  name                = var.cosmosdb_sqldatabase_name
  resource_group_name = var.resource_group_name
  account_name        = var.cosmosdb_account_name

}