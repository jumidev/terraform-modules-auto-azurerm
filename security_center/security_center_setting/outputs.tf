output "setting_name" {
  value = azurerm_security_center_setting.this.setting_name
}

output "enabled" {
  value = azurerm_security_center_setting.this.enabled
}

output "id" {
  description = "The subscription security center setting id."
  value       = azurerm_security_center_setting.this.id
}

