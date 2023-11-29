output "customer_managed_key_name" {
  value = azurerm_synapse_workspace_key.this.customer_managed_key_name
}

output "customer_managed_key_versionless_id" {
  value = azurerm_synapse_workspace_key.this.customer_managed_key_versionless_id
}

output "synapse_workspace_id" {
  value = azurerm_synapse_workspace_key.this.synapse_workspace_id
}

output "active" {
  value = azurerm_synapse_workspace_key.this.active
}

