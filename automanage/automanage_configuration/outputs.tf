output "name" {
  value = azurerm_automanage_configuration.this.name
}

output "resource_group_name" {
  value = azurerm_automanage_configuration.this.resource_group_name
}

output "location" {
  value = azurerm_automanage_configuration.this.location
}

output "antimalware" {
  value = azurerm_automanage_configuration.this.antimalware
}

output "azure_security_baseline" {
  value = azurerm_automanage_configuration.this.azure_security_baseline
}

output "backup" {
  value = azurerm_automanage_configuration.this.backup
}

output "automation_account_enabled" {
  value = azurerm_automanage_configuration.this.automation_account_enabled
}

output "boot_diagnostics_enabled" {
  value = azurerm_automanage_configuration.this.boot_diagnostics_enabled
}

output "defender_for_cloud_enabled" {
  value = azurerm_automanage_configuration.this.defender_for_cloud_enabled
}

output "guest_configuration_enabled" {
  value = azurerm_automanage_configuration.this.guest_configuration_enabled
}

output "log_analytics_enabled" {
  value = azurerm_automanage_configuration.this.log_analytics_enabled
}

output "status_change_alert_enabled" {
  value = azurerm_automanage_configuration.this.status_change_alert_enabled
}

output "tags" {
  value = azurerm_automanage_configuration.this.tags
}

output "id" {
  description = "The ID of the Automanage Configuration."
  value       = azurerm_automanage_configuration.this.id
}

