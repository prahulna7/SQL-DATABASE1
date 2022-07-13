
data "azurerm_resource_group" "main" {
  name = var.resource_group
}

resource "azurerm_mssql_server" "mssql" {
  name                         = var.azurerm_mssql_server
  resource_group_name          = data.azurerm_resource_group.main.name
  location                     = data.azurerm_resource_group.main.location
  version                      = var.server_version
  administrator_login          = var.mssql_admin_username
  administrator_login_password = var.mssql_password
  minimum_tls_version          = var.minimum_tls_version
  tags                         = var.tags
}

# resource "azurerm_mssql_server_transparent_data_encryption" "example" {
#   server_id        = azurerm_mssql_server.example.id
#   key_vault_key_id = azurerm_key_vault_key.example.id
# }