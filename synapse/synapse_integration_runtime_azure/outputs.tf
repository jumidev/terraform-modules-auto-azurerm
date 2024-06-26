output "name" {
  value = azurerm_synapse_integration_runtime_azure.this.name
}

output "synapse_workspace_id" {
  value = azurerm_synapse_integration_runtime_azure.this.synapse_workspace_id
}

output "location" {
  value = azurerm_synapse_integration_runtime_azure.this.location
}

output "compute_type" {
  value = azurerm_synapse_integration_runtime_azure.this.compute_type
}

output "core_count" {
  value = azurerm_synapse_integration_runtime_azure.this.core_count
}

output "description" {
  value = azurerm_synapse_integration_runtime_azure.this.description
}

output "time_to_live_min" {
  value = azurerm_synapse_integration_runtime_azure.this.time_to_live_min
}

output "id" {
  description = "The ID of the Synapse Azure Integration Runtime."
  value       = azurerm_synapse_integration_runtime_azure.this.id
}

