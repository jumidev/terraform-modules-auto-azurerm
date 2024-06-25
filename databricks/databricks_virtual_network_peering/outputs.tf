output "name" {
  value = azurerm_databricks_virtual_network_peering.this.name
}

output "resource_group_name" {
  value = azurerm_databricks_virtual_network_peering.this.resource_group_name
}

output "workspace_id" {
  value = azurerm_databricks_virtual_network_peering.this.workspace_id
}

output "address_space_prefixes" {
  value = azurerm_databricks_virtual_network_peering.this.address_space_prefixes
}

output "remote_address_space_prefixes" {
  value = azurerm_databricks_virtual_network_peering.this.remote_address_space_prefixes
}

output "remote_virtual_network_id" {
  value = azurerm_databricks_virtual_network_peering.this.remote_virtual_network_id
}

output "allow_virtual_network_access" {
  value = azurerm_databricks_virtual_network_peering.this.allow_virtual_network_access
}

output "allow_forwarded_traffic" {
  value = azurerm_databricks_virtual_network_peering.this.allow_forwarded_traffic
}

output "allow_gateway_transit" {
  value = azurerm_databricks_virtual_network_peering.this.allow_gateway_transit
}

output "use_remote_gateways" {
  value = azurerm_databricks_virtual_network_peering.this.use_remote_gateways
}

output "virtual_network_id" {
  value = azurerm_databricks_virtual_network_peering.this.virtual_network_id
}

output "id" {
  description = "The ID of the Databricks Virtual Network Peering."
  value       = azurerm_databricks_virtual_network_peering.this.id
}

