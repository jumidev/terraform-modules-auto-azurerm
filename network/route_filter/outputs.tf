output "location" {
  value = azurerm_route_filter.this.location
}

output "name" {
  value = azurerm_route_filter.this.name
}

output "resource_group_name" {
  value = azurerm_route_filter.this.resource_group_name
}

output "rule" {
  value = azurerm_route_filter.this.rule
}

output "tags" {
  value = azurerm_route_filter.this.tags
}

output "id" {
  description = "The ID of the Route Filter."
  value       = azurerm_route_filter.this.id
}

