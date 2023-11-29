output "name" {
  value = azurerm_automation_software_update_configuration.this.name
}

output "automation_account_id" {
  value = azurerm_automation_software_update_configuration.this.automation_account_id
}

output "duration" {
  value = azurerm_automation_software_update_configuration.this.duration
}

output "linux" {
  value = azurerm_automation_software_update_configuration.this.linux
}

output "windows" {
  value = azurerm_automation_software_update_configuration.this.windows
}

output "virtual_machine_ids" {
  value = azurerm_automation_software_update_configuration.this.virtual_machine_ids
}

output "non_azure_computer_names" {
  value = azurerm_automation_software_update_configuration.this.non_azure_computer_names
}

output "target" {
  value = azurerm_automation_software_update_configuration.this.target
}

output "post_task" {
  value = azurerm_automation_software_update_configuration.this.post_task
}

output "pre_task" {
  value = azurerm_automation_software_update_configuration.this.pre_task
}

output "schedule" {
  value = azurerm_automation_software_update_configuration.this.schedule
}

output "id" {
  description = "The ID of the Automation Software Update Configuration."
  value       = azurerm_automation_software_update_configuration.this.id
}

output "error_code" {
  description = "The Error code when failed."
  value       = azurerm_automation_software_update_configuration.this.error_code
}

output "error_meesage" {
  description = "The Error message indicating why the operation failed."
  value       = azurerm_automation_software_update_configuration.this.error_meesage
}

