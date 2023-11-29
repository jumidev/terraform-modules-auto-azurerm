output "name" {
  value = azurerm_virtual_desktop_host_pool.this.name
}

output "resource_group_name" {
  value = azurerm_virtual_desktop_host_pool.this.resource_group_name
}

output "location" {
  value = azurerm_virtual_desktop_host_pool.this.location
}

output "type" {
  value = azurerm_virtual_desktop_host_pool.this.type
}

output "load_balancer_type" {
  value = azurerm_virtual_desktop_host_pool.this.load_balancer_type
}

output "friendly_name" {
  value = azurerm_virtual_desktop_host_pool.this.friendly_name
}

output "description" {
  value = azurerm_virtual_desktop_host_pool.this.description
}

output "validate_environment" {
  value = azurerm_virtual_desktop_host_pool.this.validate_environment
}

output "start_vm_on_connect" {
  value = azurerm_virtual_desktop_host_pool.this.start_vm_on_connect
}

output "custom_rdp_properties" {
  value = azurerm_virtual_desktop_host_pool.this.custom_rdp_properties
}

output "personal_desktop_assignment_type" {
  value = azurerm_virtual_desktop_host_pool.this.personal_desktop_assignment_type
}

output "maximum_sessions_allowed" {
  value = azurerm_virtual_desktop_host_pool.this.maximum_sessions_allowed
}

output "preferred_app_group_type" {
  value = azurerm_virtual_desktop_host_pool.this.preferred_app_group_type
}

output "scheduled_agent_updates" {
  value = azurerm_virtual_desktop_host_pool.this.scheduled_agent_updates
}

output "tags" {
  value = azurerm_virtual_desktop_host_pool.this.tags
}

output "id" {
  description = "The ID of the Virtual Desktop Host Pool."
  value       = azurerm_virtual_desktop_host_pool.this.id
}

