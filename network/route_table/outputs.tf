output "name" {
  value = azurerm_route_table.this.name
}

output "resource_group_name" {
  value = azurerm_route_table.this.resource_group_name
}

output "location" {
  value = azurerm_route_table.this.location
}

output "route" {
  value = azurerm_route_table.this.route
}

output "disable_bgp_route_propagation" {
  value = azurerm_route_table.this.disable_bgp_route_propagation
}

output "tags" {
  value = azurerm_route_table.this.tags
}

output "id" {
  description = "The Route Table ID."
  value       = azurerm_route_table.this.id
}

output "subnets" {
  description = "The collection of Subnets associated with this route table."
  value       = azurerm_route_table.this.subnets
}

output "route_table_id" {
  value = azurerm_subnet_route_table_association.this.*.route_table_id
}

output "subnet_id" {
  value = azurerm_subnet_route_table_association.this.*.subnet_id
}

output "id" {
  description = "The ID of the Subnet."
  value       = azurerm_subnet_route_table_association.this.*.id
}

