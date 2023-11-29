output "minimum_child_endpoints" {
  value = azurerm_traffic_manager_nested_endpoint.this.minimum_child_endpoints
}

output "name" {
  value = azurerm_traffic_manager_nested_endpoint.this.name
}

output "profile_id" {
  value = azurerm_traffic_manager_nested_endpoint.this.profile_id
}

output "target_resource_id" {
  value = azurerm_traffic_manager_nested_endpoint.this.target_resource_id
}

output "weight" {
  value = azurerm_traffic_manager_nested_endpoint.this.weight
}

output "custom_header" {
  value = azurerm_traffic_manager_nested_endpoint.this.custom_header
}

output "enabled" {
  value = azurerm_traffic_manager_nested_endpoint.this.enabled
}

output "endpoint_location" {
  value = azurerm_traffic_manager_nested_endpoint.this.endpoint_location
}

output "minimum_required_child_endpoints_ipv4" {
  value = azurerm_traffic_manager_nested_endpoint.this.minimum_required_child_endpoints_ipv4
}

output "minimum_required_child_endpoints_ipv6" {
  value = azurerm_traffic_manager_nested_endpoint.this.minimum_required_child_endpoints_ipv6
}

output "priority" {
  value = azurerm_traffic_manager_nested_endpoint.this.priority
}

output "geo_mappings" {
  value = azurerm_traffic_manager_nested_endpoint.this.geo_mappings
}

output "subnet" {
  value = azurerm_traffic_manager_nested_endpoint.this.subnet
}

output "id" {
  description = "The ID of the Nested Endpoint."
  value       = azurerm_traffic_manager_nested_endpoint.this.id
}

