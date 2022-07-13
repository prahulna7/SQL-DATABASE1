output "private_service_connection" {
  value = azurerm_private_endpoint.privateendpoint.private_service_connection
  #value = azurerm_private_endpoint.privateendpoint.private_service_connection[1].private_ip_address
}

output "resource_group_name" {
  value = azurerm_private_endpoint.privateendpoint.resource_group_name
}


