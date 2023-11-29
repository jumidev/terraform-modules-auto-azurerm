output "automation_account_id" {
  value = azurerm_automation_watcher.this.automation_account_id
}

output "name" {
  value = azurerm_automation_watcher.this.name
}

output "execution_frequency_in_seconds" {
  value = azurerm_automation_watcher.this.execution_frequency_in_seconds
}

output "location" {
  value = azurerm_automation_watcher.this.location
}

output "script_name" {
  value = azurerm_automation_watcher.this.script_name
}

output "script_run_on" {
  value = azurerm_automation_watcher.this.script_run_on
}

output "description" {
  value = azurerm_automation_watcher.this.description
}

output "etag" {
  value = azurerm_automation_watcher.this.etag
}

output "script_parameters" {
  value = azurerm_automation_watcher.this.script_parameters
}

output "tags" {
  value = azurerm_automation_watcher.this.tags
}

output "id" {
  description = "The ID of the Automation Watcher."
  value       = azurerm_automation_watcher.this.id
}

output "status" {
  description = "The current status of the Automation Watcher."
  value       = azurerm_automation_watcher.this.status
}

