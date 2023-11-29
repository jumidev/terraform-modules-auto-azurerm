output "name" {
  value = azurerm_storage_mover_agent.this.name
}

output "arc_virtual_machine_id" {
  value = azurerm_storage_mover_agent.this.arc_virtual_machine_id
}

output "arc_virtual_machine_uuid" {
  value = azurerm_storage_mover_agent.this.arc_virtual_machine_uuid
}

output "storage_mover_id" {
  value = azurerm_storage_mover_agent.this.storage_mover_id
}

output "description" {
  value = azurerm_storage_mover_agent.this.description
}

output "id" {
  description = "The ID of the Storage Mover Agent."
  value       = azurerm_storage_mover_agent.this.id
}

