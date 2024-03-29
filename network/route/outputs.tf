output "name" {
  value = azurerm_route.this.name
}

output "resource_group_name" {
  value = azurerm_route.this.resource_group_name
}

output "route_table_name" {
  value = azurerm_route.this.route_table_name
}

output "address_prefix" {
  value = azurerm_route.this.address_prefix
}

output "next_hop_type" {
  value = azurerm_route.this.next_hop_type
}

output "next_hop_in_ip_address" {
  value = azurerm_route.this.next_hop_in_ip_address
}

output "next_hop_in_ip_address" {
  description = "Contains the IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is 'VirtualAppliance'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_route.this.next_hop_in_ip_address
}

output "id" {
  description = "The Route ID."
  value       = azurerm_route.this.id
}

