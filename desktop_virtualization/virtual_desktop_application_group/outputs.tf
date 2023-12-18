output "name" {
  value = azurerm_virtual_desktop_application_group.this.name
}

output "resource_group_name" {
  value = azurerm_virtual_desktop_application_group.this.resource_group_name
}

output "location" {
  value = azurerm_virtual_desktop_application_group.this.location
}

output "type" {
  value = azurerm_virtual_desktop_application_group.this.type
}

output "host_pool_id" {
  value = azurerm_virtual_desktop_application_group.this.host_pool_id
}

output "friendly_name" {
  value = azurerm_virtual_desktop_application_group.this.friendly_name
}

output "default_desktop_display_name" {
  value = azurerm_virtual_desktop_application_group.this.default_desktop_display_name
}

output "description" {
  value = azurerm_virtual_desktop_application_group.this.description
}

output "tags" {
  value = azurerm_virtual_desktop_application_group.this.tags
}

output "id" {
  description = "The ID of the Virtual Desktop Application Group."
  value       = azurerm_virtual_desktop_application_group.this.id
}

output "workspace_id" {
  value = azurerm_virtual_desktop_workspace_application_group_association.this.*.workspace_id
}

output "application_group_id" {
  value = azurerm_virtual_desktop_workspace_application_group_association.this.*.application_group_id
}

output "id" {
  description = "The ID of the Virtual Desktop Workspace Application Group association."
  value       = azurerm_virtual_desktop_workspace_application_group_association.this.*.id
}

