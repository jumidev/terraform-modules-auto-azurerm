output "name" {
  value = azurerm_virtual_desktop_workspace.this.name
}

output "resource_group_name" {
  value = azurerm_virtual_desktop_workspace.this.resource_group_name
}

output "location" {
  value = azurerm_virtual_desktop_workspace.this.location
}

output "friendly_name" {
  value = azurerm_virtual_desktop_workspace.this.friendly_name
}

output "description" {
  value = azurerm_virtual_desktop_workspace.this.description
}

output "public_network_access_enabled" {
  value = azurerm_virtual_desktop_workspace.this.public_network_access_enabled
}

output "tags" {
  value = azurerm_virtual_desktop_workspace.this.tags
}

output "id" {
  description = "The ID of the Virtual Desktop Workspace."
  value       = azurerm_virtual_desktop_workspace.this.id
}

