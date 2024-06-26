output "name" {
  value = azurerm_local_network_gateway.this.name
}

output "resource_group_name" {
  value = azurerm_local_network_gateway.this.resource_group_name
}

output "location" {
  value = azurerm_local_network_gateway.this.location
}

output "address_space" {
  value = azurerm_local_network_gateway.this.address_space
}

output "bgp_settings" {
  value = azurerm_local_network_gateway.this.bgp_settings
}

output "gateway_address" {
  value = azurerm_local_network_gateway.this.gateway_address
}

output "gateway_fqdn" {
  value = azurerm_local_network_gateway.this.gateway_fqdn
}

output "tags" {
  value = azurerm_local_network_gateway.this.tags
}

output "peer_weight" {
  description = "The weight added to routes learned from this BGP speaker. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_local_network_gateway.this.peer_weight
}

output "id" {
  description = "The ID of the Local Network Gateway."
  value       = azurerm_local_network_gateway.this.id
}

