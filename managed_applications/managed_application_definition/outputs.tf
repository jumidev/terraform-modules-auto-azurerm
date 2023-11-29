output "name" {
  value = azurerm_managed_application_definition.this.name
}

output "resource_group_name" {
  value = azurerm_managed_application_definition.this.resource_group_name
}

output "location" {
  value = azurerm_managed_application_definition.this.location
}

output "lock_level" {
  value = azurerm_managed_application_definition.this.lock_level
}

output "authorization" {
  value = azurerm_managed_application_definition.this.authorization
}

output "create_ui_definition" {
  value = azurerm_managed_application_definition.this.create_ui_definition
}

output "display_name" {
  value = azurerm_managed_application_definition.this.display_name
}

output "description" {
  value = azurerm_managed_application_definition.this.description
}

output "package_enabled" {
  value = azurerm_managed_application_definition.this.package_enabled
}

output "main_template" {
  value = azurerm_managed_application_definition.this.main_template
}

output "package_file_uri" {
  value = azurerm_managed_application_definition.this.package_file_uri
}

output "tags" {
  value = azurerm_managed_application_definition.this.tags
}

output "id" {
  description = "The ID of the Managed Application Definition."
  value       = azurerm_managed_application_definition.this.id
}

