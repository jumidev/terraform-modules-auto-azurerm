output "name" {
  value = azurerm_communication_service.this.name
}

output "resource_group_name" {
  value = azurerm_communication_service.this.resource_group_name
}

output "data_location" {
  value = azurerm_communication_service.this.data_location
}

output "tags" {
  value = azurerm_communication_service.this.tags
}

output "id" {
  description = "The ID of the Communication Service."
  value       = azurerm_communication_service.this.id
}

output "primary_connection_string" {
  description = "The primary connection string of the Communication Service."
  value       = azurerm_communication_service.this.primary_connection_string
}

output "secondary_connection_string" {
  description = "The secondary connection string of the Communication Service."
  value       = azurerm_communication_service.this.secondary_connection_string
}

output "primary_key" {
  description = "The primary key of the Communication Service."
  value       = azurerm_communication_service.this.primary_key
}

output "secondary_key" {
  description = "The secondary key of the Communication Service."
  value       = azurerm_communication_service.this.secondary_key
}

