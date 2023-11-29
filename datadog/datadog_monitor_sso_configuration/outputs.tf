output "datadog_monitor_id" {
  value = azurerm_datadog_monitor_sso_configuration.this.datadog_monitor_id
}

output "single_sign_on_enabled" {
  value = azurerm_datadog_monitor_sso_configuration.this.single_sign_on_enabled
}

output "enterprise_application_id" {
  value = azurerm_datadog_monitor_sso_configuration.this.enterprise_application_id
}

output "name" {
  value = azurerm_datadog_monitor_sso_configuration.this.name
}

output "login_url" {
  description = "The SingleSignOn URL to login to Datadog org."
  value       = azurerm_datadog_monitor_sso_configuration.this.login_url
}

