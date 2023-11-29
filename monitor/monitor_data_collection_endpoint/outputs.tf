output "location" {
  value = azurerm_monitor_data_collection_endpoint.this.location
}

output "name" {
  value = azurerm_monitor_data_collection_endpoint.this.name
}

output "resource_group_name" {
  value = azurerm_monitor_data_collection_endpoint.this.resource_group_name
}

output "description" {
  value = azurerm_monitor_data_collection_endpoint.this.description
}

output "kind" {
  value = azurerm_monitor_data_collection_endpoint.this.kind
}

output "public_network_access_enabled" {
  value = azurerm_monitor_data_collection_endpoint.this.public_network_access_enabled
}

output "tags" {
  value = azurerm_monitor_data_collection_endpoint.this.tags
}

output "id" {
  description = "The ID of the Data Collection Endpoint."
  value       = azurerm_monitor_data_collection_endpoint.this.id
}

output "configuration_access_endpoint" {
  description = "The endpoint used for accessing configuration, e.g., 'https://mydce-abcd.eastus-1.control.monitor.azure.com'."
  value       = azurerm_monitor_data_collection_endpoint.this.configuration_access_endpoint
}

output "logs_ingestion_endpoint" {
  description = "The endpoint used for ingesting logs, e.g., 'https://mydce-abcd.eastus-1.ingest.monitor.azure.com'."
  value       = azurerm_monitor_data_collection_endpoint.this.logs_ingestion_endpoint
}

