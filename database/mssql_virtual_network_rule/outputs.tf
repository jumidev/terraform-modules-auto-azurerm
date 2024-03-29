output "name" {
  value = azurerm_mssql_virtual_network_rule.this.name
}

output "server_id" {
  value = azurerm_mssql_virtual_network_rule.this.server_id
}

output "subnet_id" {
  value = azurerm_mssql_virtual_network_rule.this.subnet_id
}

output "ignore_missing_vnet_service_endpoint" {
  value = azurerm_mssql_virtual_network_rule.this.ignore_missing_vnet_service_endpoint
}

output "ignore_missing_vnet_service_endpoint" {
  description = "Create the virtual network rule before the subnet has the virtual network service endpoint enabled. Defaults to 'false'. ~> **NOTE:** If 'ignore_missing_vnet_service_endpoint' is false, and the target subnet does not contain the 'Microsoft.SQL' endpoint in the 'service_endpoints' array, the deployment will fail when it tries to create the SQL virtual network rule. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_mssql_virtual_network_rule.this.ignore_missing_vnet_service_endpoint
}

output "id" {
  description = "The ID of the SQL virtual network rule."
  value       = azurerm_mssql_virtual_network_rule.this.id
}

