output "name" {
  value = azurerm_traffic_manager_azure_endpoint.this.name
}

output "profile_id" {
  value = azurerm_traffic_manager_azure_endpoint.this.profile_id
}

output "target_resource_id" {
  value = azurerm_traffic_manager_azure_endpoint.this.target_resource_id
}

output "weight" {
  value = azurerm_traffic_manager_azure_endpoint.this.weight
}

output "custom_header" {
  value = azurerm_traffic_manager_azure_endpoint.this.custom_header
}

output "enabled" {
  value = azurerm_traffic_manager_azure_endpoint.this.enabled
}

output "geo_mappings" {
  value = azurerm_traffic_manager_azure_endpoint.this.geo_mappings
}

output "priority" {
  value = azurerm_traffic_manager_azure_endpoint.this.priority
}

output "subnet" {
  value = azurerm_traffic_manager_azure_endpoint.this.subnet
}

output "id" {
  description = "The ID of the Azure Endpoint."
  value       = azurerm_traffic_manager_azure_endpoint.this.id
}

