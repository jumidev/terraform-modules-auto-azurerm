output "name" {
  value = azurerm_automation_source_control.this.name
}

output "automation_account_id" {
  value = azurerm_automation_source_control.this.automation_account_id
}

output "folder_path" {
  value = azurerm_automation_source_control.this.folder_path
}

output "repository_url" {
  value = azurerm_automation_source_control.this.repository_url
}

output "security" {
  value = azurerm_automation_source_control.this.security
}

output "source_control_type" {
  value = azurerm_automation_source_control.this.source_control_type
}

output "automatic_sync" {
  value = azurerm_automation_source_control.this.automatic_sync
}

output "branch" {
  value = azurerm_automation_source_control.this.branch
}

output "description" {
  value = azurerm_automation_source_control.this.description
}

output "publish_runbook_enabled" {
  value = azurerm_automation_source_control.this.publish_runbook_enabled
}

output "id" {
  description = "The ID of the Automation Source Control."
  value       = azurerm_automation_source_control.this.id
}

