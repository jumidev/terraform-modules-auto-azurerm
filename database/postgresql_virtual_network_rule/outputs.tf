output "name" {
  value = azurerm_postgresql_virtual_network_rule.this.name
}

output "resource_group_name" {
  value = azurerm_postgresql_virtual_network_rule.this.resource_group_name
}

output "server_name" {
  value = azurerm_postgresql_virtual_network_rule.this.server_name
}

output "subnet_id" {
  value = azurerm_postgresql_virtual_network_rule.this.subnet_id
}

output "ignore_missing_vnet_service_endpoint" {
  value = azurerm_postgresql_virtual_network_rule.this.ignore_missing_vnet_service_endpoint
}

output "ignore_missing_vnet_service_endpoint" {
  description = "Should the Virtual Network Rule be created before the Subnet has the Virtual Network Service Endpoint enabled? In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_postgresql_virtual_network_rule.this.ignore_missing_vnet_service_endpoint
}

output "id" {
  description = "The ID of the PostgreSQL Virtual Network Rule."
  value       = azurerm_postgresql_virtual_network_rule.this.id
}

