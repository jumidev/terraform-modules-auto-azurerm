output "name" {
  value = azurerm_synapse_integration_runtime_self_hosted.this.name
}

output "synapse_workspace_id" {
  value = azurerm_synapse_integration_runtime_self_hosted.this.synapse_workspace_id
}

output "description" {
  value = azurerm_synapse_integration_runtime_self_hosted.this.description
}

output "id" {
  description = "The ID of the Synapse Self-hosted Integration Runtime."
  value       = azurerm_synapse_integration_runtime_self_hosted.this.id
}

output "authorization_key_primary" {
  description = "The primary integration runtime authentication key."
  value       = azurerm_synapse_integration_runtime_self_hosted.this.authorization_key_primary
}

output "authorization_key_secondary" {
  description = "The secondary integration runtime authentication key."
  value       = azurerm_synapse_integration_runtime_self_hosted.this.authorization_key_secondary
}

