output "name" {
  value = azurerm_synapse_managed_private_endpoint.this.name
}

output "synapse_workspace_id" {
  value = azurerm_synapse_managed_private_endpoint.this.synapse_workspace_id
}

output "target_resource_id" {
  value = azurerm_synapse_managed_private_endpoint.this.target_resource_id
}

output "subresource_name" {
  value = azurerm_synapse_managed_private_endpoint.this.subresource_name
}

output "id" {
  description = "The Synapse Managed Private Endpoint ID."
  value       = azurerm_synapse_managed_private_endpoint.this.id
}

