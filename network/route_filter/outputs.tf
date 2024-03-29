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

output "rule_type" {
  description = "The rule type of the rule. The only possible value is 'Community'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_route_filter.this.rule_type
}

output "id" {
  description = "The ID of the Route Filter."
  value       = azurerm_route_filter.this.id
}

