output "name" {
  value = azurerm_route_map.this.name
}

output "virtual_hub_id" {
  value = azurerm_route_map.this.virtual_hub_id
}

output "rule" {
  value = azurerm_route_map.this.rule
}

output "id" {
  description = "The ID of the Route Map."
  value       = azurerm_route_map.this.id
}

