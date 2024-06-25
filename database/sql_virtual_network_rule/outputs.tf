output "name" {
  value = azurerm_sql_virtual_network_rule.this.name
}

output "resource_group_name" {
  value = azurerm_sql_virtual_network_rule.this.resource_group_name
}

output "server_name" {
  value = azurerm_sql_virtual_network_rule.this.server_name
}

output "subnet_id" {
  value = azurerm_sql_virtual_network_rule.this.subnet_id
}

output "ignore_missing_vnet_service_endpoint" {
  value = azurerm_sql_virtual_network_rule.this.ignore_missing_vnet_service_endpoint
}

output "id" {
  description = "The ID of the SQL virtual network rule."
  value       = azurerm_sql_virtual_network_rule.this.id
}

