output "name" {
  value = azurerm_email_communication_service.this.name
}

output "resource_group_name" {
  value = azurerm_email_communication_service.this.resource_group_name
}

output "data_location" {
  value = azurerm_email_communication_service.this.data_location
}

output "tags" {
  value = azurerm_email_communication_service.this.tags
}

output "id" {
  description = "The ID of the Email Communication Service."
  value       = azurerm_email_communication_service.this.id
}

