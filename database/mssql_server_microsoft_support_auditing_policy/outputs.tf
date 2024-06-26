output "server_id" {
  value = azurerm_mssql_server_microsoft_support_auditing_policy.this.server_id
}

output "enabled" {
  value = azurerm_mssql_server_microsoft_support_auditing_policy.this.enabled
}

output "blob_storage_endpoint" {
  value = azurerm_mssql_server_microsoft_support_auditing_policy.this.blob_storage_endpoint
}

output "storage_account_access_key" {
  value     = azurerm_mssql_server_microsoft_support_auditing_policy.this.storage_account_access_key
  sensitive = true
}

output "log_monitoring_enabled" {
  value = azurerm_mssql_server_microsoft_support_auditing_policy.this.log_monitoring_enabled
}

output "storage_account_subscription_id" {
  value = azurerm_mssql_server_microsoft_support_auditing_policy.this.storage_account_subscription_id
}

output "id" {
  description = "The ID of the MS SQL Server Microsoft Support Auditing Policy."
  value       = azurerm_mssql_server_microsoft_support_auditing_policy.this.id
}

