resource "azurerm_log_analytics_workspace" "sqldbla" {
  name                = "${var.applicationname}-LAW-${var.env}"
  location            = data.azurerm_resource_group.main.location
  resource_group_name = data.azurerm_resource_group.main.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}