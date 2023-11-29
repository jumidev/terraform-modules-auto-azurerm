output "arc_machine_id" {
  value = azurerm_arc_machine_extension.this.arc_machine_id
}

output "location" {
  value = azurerm_arc_machine_extension.this.location
}

output "name" {
  value = azurerm_arc_machine_extension.this.name
}

output "publisher" {
  value = azurerm_arc_machine_extension.this.publisher
}

output "type" {
  value = azurerm_arc_machine_extension.this.type
}

output "automatic_upgrade_enabled" {
  value = azurerm_arc_machine_extension.this.automatic_upgrade_enabled
}

output "force_update_tag" {
  value = azurerm_arc_machine_extension.this.force_update_tag
}

output "protected_settings" {
  value = azurerm_arc_machine_extension.this.protected_settings
}

output "settings" {
  value = azurerm_arc_machine_extension.this.settings
}

output "tags" {
  value = azurerm_arc_machine_extension.this.tags
}

output "type_handler_version" {
  value = azurerm_arc_machine_extension.this.type_handler_version
}

output "id" {
  description = "The ID of the Hybrid Compute Machine Extension."
  value       = azurerm_arc_machine_extension.this.id
}

