output "storage_account_id" {
  value = azurerm_security_center_storage_defender.this.storage_account_id
}

output "override_subscription_settings_enabled" {
  value = azurerm_security_center_storage_defender.this.override_subscription_settings_enabled
}

output "malware_scanning_on_upload_enabled" {
  value = azurerm_security_center_storage_defender.this.malware_scanning_on_upload_enabled
}

output "malware_scanning_on_upload_cap_gb_per_month" {
  value = azurerm_security_center_storage_defender.this.malware_scanning_on_upload_cap_gb_per_month
}

output "sensitive_data_discovery_enabled" {
  value = azurerm_security_center_storage_defender.this.sensitive_data_discovery_enabled
}

output "id" {
  description = "The Defender for Storage id."
  value       = azurerm_security_center_storage_defender.this.id
}

