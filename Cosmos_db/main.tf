resource  "azurerm_cosmosdb_account" "cosmosdb" {

  name                = var.cosmos_db_name
  location            = var.location
  resource_group_name = var.resource_group_name
  offer_type          = "Standard"
  kind                = "GlobalDocumentDB"

  enable_automatic_failover = true

  consistency_policy {
   consistency_level = "Session"
  }

  geo_location {
    prefix            = "${var.cosmos_db_name}-${var.failover_location}"
    location          =  "${var.failover_location}"
    failover_priority = 1
  }

  geo_location {
    prefix            = var.cosmos_db_prefix
    location          = var.location
    failover_priority = 0
  }
  access_key_metadata_writes_enabled = false
  public_network_access_enabled = false
 
}
