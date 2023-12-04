output "resource_group_name" {
  value = azurerm_mssql_server_security_alert_policy.this.resource_group_name
}

output "server_name" {
  value = azurerm_mssql_server_security_alert_policy.this.server_name
}

output "state" {
  value = azurerm_mssql_server_security_alert_policy.this.state
}

output "disabled_alerts" {
  value = azurerm_mssql_server_security_alert_policy.this.disabled_alerts
}

output "email_account_admins" {
  value = azurerm_mssql_server_security_alert_policy.this.email_account_admins
}

output "email_addresses" {
  value = azurerm_mssql_server_security_alert_policy.this.email_addresses
}

output "retention_days" {
  value = azurerm_mssql_server_security_alert_policy.this.retention_days
}

output "storage_endpoint" {
  value = azurerm_mssql_server_security_alert_policy.this.storage_endpoint
}

output "storage_account_access_key" {
  value     = azurerm_mssql_server_security_alert_policy.this.storage_account_access_key
  sensitive = true
}

output "id" {
  description = "The ID of the MS SQL Server Security Alert Policy."
  value       = azurerm_mssql_server_security_alert_policy.this.id
}

