output "name" {
  value = azurerm_network_function_collector_policy.this.name
}

output "traffic_collector_id" {
  value = azurerm_network_function_collector_policy.this.traffic_collector_id
}

output "location" {
  value = azurerm_network_function_collector_policy.this.location
}

output "ipfx_emission" {
  value = azurerm_network_function_collector_policy.this.ipfx_emission
}

output "ipfx_ingestion" {
  value = azurerm_network_function_collector_policy.this.ipfx_ingestion
}

output "tags" {
  value = azurerm_network_function_collector_policy.this.tags
}

output "id" {
  description = "The ID of the Network Function Collector Policy."
  value       = azurerm_network_function_collector_policy.this.id
}

