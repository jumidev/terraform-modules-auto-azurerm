output "location" {
  value = azurerm_maintenance_assignment_virtual_machine.this.location
}

output "maintenance_configuration_id" {
  value = azurerm_maintenance_assignment_virtual_machine.this.maintenance_configuration_id
}

output "virtual_machine_id" {
  value = azurerm_maintenance_assignment_virtual_machine.this.virtual_machine_id
}

output "id" {
  description = "The ID of the Maintenance Assignment."
  value       = azurerm_maintenance_assignment_virtual_machine.this.id
}

