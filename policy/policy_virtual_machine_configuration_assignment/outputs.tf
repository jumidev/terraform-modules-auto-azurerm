output "name" {
  value = azurerm_policy_virtual_machine_configuration_assignment.this.name
}

output "location" {
  value = azurerm_policy_virtual_machine_configuration_assignment.this.location
}

output "virtual_machine_id" {
  value = azurerm_policy_virtual_machine_configuration_assignment.this.virtual_machine_id
}

output "configuration" {
  value = azurerm_policy_virtual_machine_configuration_assignment.this.configuration
}

output "id" {
  description = "The ID of the Policy Virtual Machine Configuration Assignment."
  value       = azurerm_policy_virtual_machine_configuration_assignment.this.id
}

