output "name" {
  value = azurerm_automation_variable_datetime.this.name
}

output "resource_group_name" {
  value = azurerm_automation_variable_datetime.this.resource_group_name
}

output "automation_account_name" {
  value = azurerm_automation_variable_datetime.this.automation_account_name
}

output "description" {
  value = azurerm_automation_variable_datetime.this.description
}

output "encrypted" {
  value = azurerm_automation_variable_datetime.this.encrypted
}

output "value" {
  value = azurerm_automation_variable_datetime.this.value
}

output "id" {
  description = "The ID of the Automation Variable."
  value       = azurerm_automation_variable_datetime.this.id
}

