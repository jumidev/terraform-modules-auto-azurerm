output "name" {
  value = azurerm_synapse_linked_service.this.name
}

output "synapse_workspace_id" {
  value = azurerm_synapse_linked_service.this.synapse_workspace_id
}

output "type" {
  value = azurerm_synapse_linked_service.this.type
}

output "type_properties_json" {
  value = azurerm_synapse_linked_service.this.type_properties_json
}

output "additional_properties" {
  value = azurerm_synapse_linked_service.this.additional_properties
}

output "annotations" {
  value = azurerm_synapse_linked_service.this.annotations
}

output "description" {
  value = azurerm_synapse_linked_service.this.description
}

output "integration_runtime" {
  value = azurerm_synapse_linked_service.this.integration_runtime
}

output "parameters" {
  value = azurerm_synapse_linked_service.this.parameters
}

output "id" {
  description = "The ID of the Synapse Linked Service."
  value       = azurerm_synapse_linked_service.this.id
}

