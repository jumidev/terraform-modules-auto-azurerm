output "location" {
  value = azurerm_maintenance_assignment_virtual_machine_scale_set.this.location
}

output "maintenance_configuration_id" {
  value = azurerm_maintenance_assignment_virtual_machine_scale_set.this.maintenance_configuration_id
}

output "virtual_machine_scale_set_id" {
  value = azurerm_maintenance_assignment_virtual_machine_scale_set.this.virtual_machine_scale_set_id
}

output "id" {
  description = "The ID of the Maintenance Assignment."
  value       = azurerm_maintenance_assignment_virtual_machine_scale_set.this.id
}

