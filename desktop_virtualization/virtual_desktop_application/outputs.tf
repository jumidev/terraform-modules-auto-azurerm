output "name" {
  value = azurerm_virtual_desktop_application.this.name
}

output "application_group_id" {
  value = azurerm_virtual_desktop_application.this.application_group_id
}

output "friendly_name" {
  value = azurerm_virtual_desktop_application.this.friendly_name
}

output "description" {
  value = azurerm_virtual_desktop_application.this.description
}

output "path" {
  value = azurerm_virtual_desktop_application.this.path
}

output "command_line_argument_policy" {
  value = azurerm_virtual_desktop_application.this.command_line_argument_policy
}

output "command_line_arguments" {
  value = azurerm_virtual_desktop_application.this.command_line_arguments
}

output "show_in_portal" {
  value = azurerm_virtual_desktop_application.this.show_in_portal
}

output "icon_path" {
  value = azurerm_virtual_desktop_application.this.icon_path
}

output "icon_index" {
  value = azurerm_virtual_desktop_application.this.icon_index
}

output "id" {
  description = "The ID of the Virtual Desktop Application."
  value       = azurerm_virtual_desktop_application.this.id
}

