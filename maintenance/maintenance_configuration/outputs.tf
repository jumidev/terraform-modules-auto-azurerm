output "name" {
  value = azurerm_maintenance_configuration.this.name
}

output "resource_group_name" {
  value = azurerm_maintenance_configuration.this.resource_group_name
}

output "location" {
  value = azurerm_maintenance_configuration.this.location
}

output "scope" {
  value = azurerm_maintenance_configuration.this.scope
}

output "visibility" {
  value = azurerm_maintenance_configuration.this.visibility
}

output "window" {
  value = azurerm_maintenance_configuration.this.window
}

output "install_patches" {
  value = azurerm_maintenance_configuration.this.install_patches
}

output "in_guest_user_patch_mode" {
  value = azurerm_maintenance_configuration.this.in_guest_user_patch_mode
}

output "properties" {
  value = azurerm_maintenance_configuration.this.properties
}

output "tags" {
  value = azurerm_maintenance_configuration.this.tags
}

output "id" {
  description = "The ID of the Maintenance Configuration."
  value       = azurerm_maintenance_configuration.this.id
}

