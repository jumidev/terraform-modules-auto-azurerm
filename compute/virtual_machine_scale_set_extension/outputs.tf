output "name" {
  value = azurerm_virtual_machine_scale_set_extension.this.name
}

output "virtual_machine_scale_set_id" {
  value = azurerm_virtual_machine_scale_set_extension.this.virtual_machine_scale_set_id
}

output "publisher" {
  value = azurerm_virtual_machine_scale_set_extension.this.publisher
}

output "type" {
  value = azurerm_virtual_machine_scale_set_extension.this.type
}

output "type_handler_version" {
  value = azurerm_virtual_machine_scale_set_extension.this.type_handler_version
}

output "auto_upgrade_minor_version" {
  value = azurerm_virtual_machine_scale_set_extension.this.auto_upgrade_minor_version
}

output "automatic_upgrade_enabled" {
  value = azurerm_virtual_machine_scale_set_extension.this.automatic_upgrade_enabled
}

output "failure_suppression_enabled" {
  value = azurerm_virtual_machine_scale_set_extension.this.failure_suppression_enabled
}

output "force_update_tag" {
  value = azurerm_virtual_machine_scale_set_extension.this.force_update_tag
}

output "protected_settings" {
  value = azurerm_virtual_machine_scale_set_extension.this.protected_settings
}

output "protected_settings_from_key_vault" {
  value = azurerm_virtual_machine_scale_set_extension.this.protected_settings_from_key_vault
}

output "provision_after_extensions" {
  value = azurerm_virtual_machine_scale_set_extension.this.provision_after_extensions
}

output "settings" {
  value = azurerm_virtual_machine_scale_set_extension.this.settings
}

output "id" {
  description = "The ID of the Virtual Machine Scale Set Extension."
  value       = azurerm_virtual_machine_scale_set_extension.this.id
}

