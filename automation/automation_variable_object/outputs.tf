output "name" {
  value = azurerm_automation_variable_object.this.name
}

output "resource_group_name" {
  value = azurerm_automation_variable_object.this.resource_group_name
}

output "automation_account_name" {
  value = azurerm_automation_variable_object.this.automation_account_name
}

output "description" {
  value = azurerm_automation_variable_object.this.description
}

output "encrypted" {
  value = azurerm_automation_variable_object.this.encrypted
}

output "value" {
  value = azurerm_automation_variable_object.this.value
}

output "id" {
  description = "The ID of the Automation Variable."
  value       = azurerm_automation_variable_object.this.id
}

