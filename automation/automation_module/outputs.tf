output "name" {
  value = azurerm_automation_module.this.name
}

output "resource_group_name" {
  value = azurerm_automation_module.this.resource_group_name
}

output "automation_account_name" {
  value = azurerm_automation_module.this.automation_account_name
}

output "module_link" {
  value = azurerm_automation_module.this.module_link
}

output "id" {
  description = "The Automation Module ID."
  value       = azurerm_automation_module.this.id
}

