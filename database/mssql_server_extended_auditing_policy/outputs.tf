output "server_id" {
  value = azurerm_mssql_server_extended_auditing_policy.this.server_id
}

output "enabled" {
  value = azurerm_mssql_server_extended_auditing_policy.this.enabled
}

output "storage_endpoint" {
  value = azurerm_mssql_server_extended_auditing_policy.this.storage_endpoint
}

output "retention_in_days" {
  value = azurerm_mssql_server_extended_auditing_policy.this.retention_in_days
}

output "storage_account_access_key" {
  value     = azurerm_mssql_server_extended_auditing_policy.this.storage_account_access_key
  sensitive = true
}

output "storage_account_access_key_is_secondary" {
  value = azurerm_mssql_server_extended_auditing_policy.this.storage_account_access_key_is_secondary
}

output "log_monitoring_enabled" {
  value = azurerm_mssql_server_extended_auditing_policy.this.log_monitoring_enabled
}

output "storage_account_subscription_id" {
  value = azurerm_mssql_server_extended_auditing_policy.this.storage_account_subscription_id
}

output "predicate_expression" {
  value = azurerm_mssql_server_extended_auditing_policy.this.predicate_expression
}

output "audit_actions_and_groups" {
  value = azurerm_mssql_server_extended_auditing_policy.this.audit_actions_and_groups
}

output "id" {
  description = "The ID of the MS SQL Server Extended Auditing Policy."
  value       = azurerm_mssql_server_extended_auditing_policy.this.id
}

