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

output "next_hop_type" {
  description = "The type of next hop. Currently the only possible value is 'ResourceId'. Defaults to 'ResourceId'. ~> **Note:** The Routes can alternatively be created using the [virtual_hub_route_table_route](virtual_hub_route_table_route.html) resource. Using both inline and external routes is not supported and may result in unexpected configuration. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_virtual_hub_route_table.this.next_hop_type
}

output "id" {
  description = "The ID of the Virtual Hub Route Table."
  value       = azurerm_virtual_hub_route_table.this.id
}

