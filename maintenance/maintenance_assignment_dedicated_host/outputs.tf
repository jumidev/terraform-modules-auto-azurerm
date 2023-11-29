output "location" {
  value = azurerm_maintenance_assignment_dedicated_host.this.location
}

output "maintenance_configuration_id" {
  value = azurerm_maintenance_assignment_dedicated_host.this.maintenance_configuration_id
}

output "dedicated_host_id" {
  value = azurerm_maintenance_assignment_dedicated_host.this.dedicated_host_id
}

output "id" {
  description = "The ID of the Maintenance Assignment."
  value       = azurerm_maintenance_assignment_dedicated_host.this.id
}

