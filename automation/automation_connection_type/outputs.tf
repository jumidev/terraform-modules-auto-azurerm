output "name" {
  value = azurerm_automation_connection_type.this.name
}

output "resource_group_name" {
  value = azurerm_automation_connection_type.this.resource_group_name
}

output "automation_account_name" {
  value = azurerm_automation_connection_type.this.automation_account_name
}

output "field" {
  value = azurerm_automation_connection_type.this.field
}

output "is_global" {
  value = azurerm_automation_connection_type.this.is_global
}

output "id" {
  description = "The the Automation Connection Type ID."
  value       = azurerm_automation_connection_type.this.id
}

