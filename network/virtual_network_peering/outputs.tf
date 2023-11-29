output "name" {
  value = azurerm_virtual_network_peering.this.name
}

output "virtual_network_name" {
  value = azurerm_virtual_network_peering.this.virtual_network_name
}

output "remote_virtual_network_id" {
  value = azurerm_virtual_network_peering.this.remote_virtual_network_id
}

output "resource_group_name" {
  value = azurerm_virtual_network_peering.this.resource_group_name
}

output "allow_virtual_network_access" {
  value = azurerm_virtual_network_peering.this.allow_virtual_network_access
}

output "allow_forwarded_traffic" {
  value = azurerm_virtual_network_peering.this.allow_forwarded_traffic
}

output "allow_gateway_transit" {
  value = azurerm_virtual_network_peering.this.allow_gateway_transit
}

output "use_remote_gateways" {
  value = azurerm_virtual_network_peering.this.use_remote_gateways
}

output "triggers" {
  value = azurerm_virtual_network_peering.this.triggers
}

output "id" {
  description = "The ID of the Virtual Network Peering."
  value       = azurerm_virtual_network_peering.this.id
}

