output "name" {
  value = azurerm_portal_dashboard.this.name
}

output "resource_group_name" {
  value = azurerm_portal_dashboard.this.resource_group_name
}

output "location" {
  value = azurerm_portal_dashboard.this.location
}

output "dashboard_properties" {
  value = azurerm_portal_dashboard.this.dashboard_properties
}

output "tags" {
  value = azurerm_portal_dashboard.this.tags
}

output "id" {
  description = "The ID of the Dashboard."
  value       = azurerm_portal_dashboard.this.id
}

