output "route_table_id" {
  value = azurerm_virtual_hub_route_table_route.this.route_table_id
}

output "name" {
  value = azurerm_virtual_hub_route_table_route.this.name
}

output "destinations" {
  value = azurerm_virtual_hub_route_table_route.this.destinations
}

output "destinations_type" {
  value = azurerm_virtual_hub_route_table_route.this.destinations_type
}

output "next_hop" {
  value = azurerm_virtual_hub_route_table_route.this.next_hop
}

output "next_hop_type" {
  value = azurerm_virtual_hub_route_table_route.this.next_hop_type
}

output "id" {
  description = "The ID of the Virtual Hub Route Table."
  value       = azurerm_virtual_hub_route_table_route.this.id
}

