output "sql_pool_id" {
  value = azurerm_synapse_sql_pool_security_alert_policy.this.sql_pool_id
}

output "policy_state" {
  value = azurerm_synapse_sql_pool_security_alert_policy.this.policy_state
}

output "disabled_alerts" {
  value = azurerm_synapse_sql_pool_security_alert_policy.this.disabled_alerts
}

output "email_account_admins_enabled" {
  value = azurerm_synapse_sql_pool_security_alert_policy.this.email_account_admins_enabled
}

output "email_addresses" {
  value = azurerm_synapse_sql_pool_security_alert_policy.this.email_addresses
}

output "retention_days" {
  value = azurerm_synapse_sql_pool_security_alert_policy.this.retention_days
}

output "storage_account_access_key" {
  value     = azurerm_synapse_sql_pool_security_alert_policy.this.storage_account_access_key
  sensitive = true
}

output "storage_endpoint" {
  value = azurerm_synapse_sql_pool_security_alert_policy.this.storage_endpoint
}

output "storage_endpoint" {
  description = "Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_synapse_sql_pool_security_alert_policy.this.storage_endpoint
}

output "id" {
  description = "The ID of the Synapse SQL Pool Security Alert Policy."
  value       = azurerm_synapse_sql_pool_security_alert_policy.this.id
}

