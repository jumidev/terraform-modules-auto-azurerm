output "name" {
  value = azurerm_traffic_manager_external_endpoint.this.name
}

output "profile_id" {
  value = azurerm_traffic_manager_external_endpoint.this.profile_id
}

output "target" {
  value = azurerm_traffic_manager_external_endpoint.this.target
}

output "weight" {
  value = azurerm_traffic_manager_external_endpoint.this.weight
}

output "endpoint_location" {
  value = azurerm_traffic_manager_external_endpoint.this.endpoint_location
}

output "custom_header" {
  value = azurerm_traffic_manager_external_endpoint.this.custom_header
}

output "enabled" {
  value = azurerm_traffic_manager_external_endpoint.this.enabled
}

output "geo_mappings" {
  value = azurerm_traffic_manager_external_endpoint.this.geo_mappings
}

output "priority" {
  value = azurerm_traffic_manager_external_endpoint.this.priority
}

output "subnet" {
  value = azurerm_traffic_manager_external_endpoint.this.subnet
}

output "id" {
  description = "The ID of the External Endpoint."
  value       = azurerm_traffic_manager_external_endpoint.this.id
}

