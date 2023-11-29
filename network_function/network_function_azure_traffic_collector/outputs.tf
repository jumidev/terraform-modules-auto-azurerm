output "name" {
  value = azurerm_network_function_azure_traffic_collector.this.name
}

output "resource_group_name" {
  value = azurerm_network_function_azure_traffic_collector.this.resource_group_name
}

output "location" {
  value = azurerm_network_function_azure_traffic_collector.this.location
}

output "tags" {
  value = azurerm_network_function_azure_traffic_collector.this.tags
}

output "id" {
  description = "The ID of the Network Function Azure Traffic Collector."
  value       = azurerm_network_function_azure_traffic_collector.this.id
}

output "collector_policy_ids" {
  description = "The list of Resource IDs of collector policies."
  value       = azurerm_network_function_azure_traffic_collector.this.collector_policy_ids
}

output "virtual_hub_id" {
  description = "The Resource ID of virtual hub."
  value       = azurerm_network_function_azure_traffic_collector.this.virtual_hub_id
}

