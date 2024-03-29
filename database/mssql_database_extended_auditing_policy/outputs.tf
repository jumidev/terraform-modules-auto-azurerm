output "database_id" {
  value = azurerm_mssql_database_extended_auditing_policy.this.database_id
}

output "enabled" {
  value = azurerm_mssql_database_extended_auditing_policy.this.enabled
}

output "storage_endpoint" {
  value = azurerm_mssql_database_extended_auditing_policy.this.storage_endpoint
}

output "retention_in_days" {
  value = azurerm_mssql_database_extended_auditing_policy.this.retention_in_days
}

output "storage_account_access_key" {
  value     = azurerm_mssql_database_extended_auditing_policy.this.storage_account_access_key
  sensitive = true
}

output "storage_account_access_key_is_secondary" {
  value = azurerm_mssql_database_extended_auditing_policy.this.storage_account_access_key_is_secondary
}

output "log_monitoring_enabled" {
  value = azurerm_mssql_database_extended_auditing_policy.this.log_monitoring_enabled
}

output "log_monitoring_enabled" {
  description = "Enable audit events to Azure Monitor? Defaults to 'true'. ~> **NOTE:** To enable sending audit events to Log Analytics, please refer to the example which can be found in [the './examples/sql-azure/sql_auditing_log_analytics' directory within the GitHub Repository](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/sql-azure/sql_auditing_log_analytics).  To enable sending server audit events to Log Analytics, please enable the master database to send audit events to Log Analytics. To enable audit events to Eventhub, please refer to the example which can be found in [the './examples/sql-azure/sql_auditing_eventhub' directory within the GitHub Repository](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/sql-azure/sql_auditing_eventhub). In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_mssql_database_extended_auditing_policy.this.log_monitoring_enabled
}

output "id" {
  description = "The ID of the MS SQL Database Extended Auditing Policy."
  value       = azurerm_mssql_database_extended_auditing_policy.this.id
}

