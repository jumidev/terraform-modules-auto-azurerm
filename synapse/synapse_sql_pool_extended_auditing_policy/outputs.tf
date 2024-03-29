output "sql_pool_id" {
  value = azurerm_synapse_sql_pool_extended_auditing_policy.this.sql_pool_id
}

output "storage_endpoint" {
  value = azurerm_synapse_sql_pool_extended_auditing_policy.this.storage_endpoint
}

output "retention_in_days" {
  value = azurerm_synapse_sql_pool_extended_auditing_policy.this.retention_in_days
}

output "storage_account_access_key" {
  value     = azurerm_synapse_sql_pool_extended_auditing_policy.this.storage_account_access_key
  sensitive = true
}

output "storage_account_access_key_is_secondary" {
  value = azurerm_synapse_sql_pool_extended_auditing_policy.this.storage_account_access_key_is_secondary
}

output "log_monitoring_enabled" {
  value = azurerm_synapse_sql_pool_extended_auditing_policy.this.log_monitoring_enabled
}

output "log_monitoring_enabled" {
  description = "Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its master database audit events to Azure Monitor. Defaults to 'true'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_synapse_sql_pool_extended_auditing_policy.this.log_monitoring_enabled
}

output "id" {
  description = "The ID of the Synapse SQL Pool Extended Auditing Policy."
  value       = azurerm_synapse_sql_pool_extended_auditing_policy.this.id
}

