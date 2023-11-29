output "name" {
  value = azurerm_virtual_hub_route_table.this.name
}

output "virtual_hub_id" {
  value = azurerm_virtual_hub_route_table.this.virtual_hub_id
}

output "labels" {
  value = azurerm_virtual_hub_route_table.this.labels
}

output "route" {
  value = azurerm_virtual_hub_route_table.this.route
}

output "id" {
  description = "The ID of the Virtual Hub Route Table."
  value       = azurerm_virtual_hub_route_table.this.id
}

