output "synapse_workspace_id" {
  value = azurerm_synapse_workspace_extended_auditing_policy.this.synapse_workspace_id
}

output "storage_endpoint" {
  value = azurerm_synapse_workspace_extended_auditing_policy.this.storage_endpoint
}

output "retention_in_days" {
  value = azurerm_synapse_workspace_extended_auditing_policy.this.retention_in_days
}

output "storage_account_access_key" {
  value     = azurerm_synapse_workspace_extended_auditing_policy.this.storage_account_access_key
  sensitive = true
}

output "storage_account_access_key_is_secondary" {
  value = azurerm_synapse_workspace_extended_auditing_policy.this.storage_account_access_key_is_secondary
}

output "log_monitoring_enabled" {
  value = azurerm_synapse_workspace_extended_auditing_policy.this.log_monitoring_enabled
}

output "id" {
  description = "The ID of the Synapse Workspace Extended Auditing Policy."
  value       = azurerm_synapse_workspace_extended_auditing_policy.this.id
}

