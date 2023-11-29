output "name" {
  value = azurerm_automation_dsc_configuration.this.name
}

output "resource_group_name" {
  value = azurerm_automation_dsc_configuration.this.resource_group_name
}

output "automation_account_name" {
  value = azurerm_automation_dsc_configuration.this.automation_account_name
}

output "content_embedded" {
  value = azurerm_automation_dsc_configuration.this.content_embedded
}

output "location" {
  value = azurerm_automation_dsc_configuration.this.location
}

output "log_verbose" {
  value = azurerm_automation_dsc_configuration.this.log_verbose
}

output "description" {
  value = azurerm_automation_dsc_configuration.this.description
}

output "tags" {
  value = azurerm_automation_dsc_configuration.this.tags
}

output "id" {
  description = "The ID of the Automation DSC Configuration."
  value       = azurerm_automation_dsc_configuration.this.id
}

