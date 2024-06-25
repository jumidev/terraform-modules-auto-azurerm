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

output "id" {
  description = "The ID of the SQL virtual network rule."
  value       = azurerm_mssql_virtual_network_rule.this.id
}

