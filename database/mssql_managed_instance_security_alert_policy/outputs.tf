output "resource_group_name" {
  value = azurerm_mssql_managed_instance_security_alert_policy.this.resource_group_name
}

output "managed_instance_name" {
  value = azurerm_mssql_managed_instance_security_alert_policy.this.managed_instance_name
}

output "disabled_alerts" {
  value = azurerm_mssql_managed_instance_security_alert_policy.this.disabled_alerts
}

output "enabled" {
  value = azurerm_mssql_managed_instance_security_alert_policy.this.enabled
}

output "email_account_admins_enabled" {
  value = azurerm_mssql_managed_instance_security_alert_policy.this.email_account_admins_enabled
}

output "email_addresses" {
  value = azurerm_mssql_managed_instance_security_alert_policy.this.email_addresses
}

output "retention_days" {
  value = azurerm_mssql_managed_instance_security_alert_policy.this.retention_days
}

output "storage_endpoint" {
  value = azurerm_mssql_managed_instance_security_alert_policy.this.storage_endpoint
}

output "storage_account_access_key" {
  value = azurerm_mssql_managed_instance_security_alert_policy.this.storage_account_access_key
}

output "id" {
  description = "The ID of the MS SQL Managed Instance Security Alert Policy."
  value       = azurerm_mssql_managed_instance_security_alert_policy.this.id
}

