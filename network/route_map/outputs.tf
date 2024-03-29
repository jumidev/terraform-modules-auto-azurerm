output "name" {
  value = azurerm_route_map.this.name
}

output "virtual_hub_id" {
  value = azurerm_route_map.this.virtual_hub_id
}

output "rule" {
  value = azurerm_route_map.this.rule
}

output "route_prefix" {
  description = "A list of route prefixes which this criterion matches. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_route_map.this.route_prefix
}

output "id" {
  description = "The ID of the Route Map."
  value       = azurerm_route_map.this.id
}

