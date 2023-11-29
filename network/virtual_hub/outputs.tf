output "name" {
  value = azurerm_virtual_hub.this.name
}

output "resource_group_name" {
  value = azurerm_virtual_hub.this.resource_group_name
}

output "location" {
  value = azurerm_virtual_hub.this.location
}

output "address_prefix" {
  value = azurerm_virtual_hub.this.address_prefix
}

output "hub_routing_preference" {
  value = azurerm_virtual_hub.this.hub_routing_preference
}

output "route" {
  value = azurerm_virtual_hub.this.route
}

output "sku" {
  value = azurerm_virtual_hub.this.sku
}

output "virtual_wan_id" {
  value = azurerm_virtual_hub.this.virtual_wan_id
}

output "tags" {
  value = azurerm_virtual_hub.this.tags
}

output "id" {
  description = "The ID of the Virtual Hub."
  value       = azurerm_virtual_hub.this.id
}

output "default_route_table_id" {
  description = "The ID of the default Route Table in the Virtual Hub."
  value       = azurerm_virtual_hub.this.default_route_table_id
}

output "virtual_router_asn" {
  description = "The Autonomous System Number of the Virtual Hub BGP router."
  value       = azurerm_virtual_hub.this.virtual_router_asn
}

output "virtual_router_ips" {
  description = "The IP addresses of the Virtual Hub BGP router."
  value       = azurerm_virtual_hub.this.virtual_router_ips
}

output "virtual_router_auto_scale_min_capacity" {
  description = "Minimum instance capacity for the scaling configuration of the Virtual Hub Router."
  value       = azurerm_virtual_hub.this.virtual_router_auto_scale_min_capacity
}

