output "name" {
  value = azurerm_automation_runbook.this.name
}

output "resource_group_name" {
  value = azurerm_automation_runbook.this.resource_group_name
}

output "location" {
  value = azurerm_automation_runbook.this.location
}

output "automation_account_name" {
  value = azurerm_automation_runbook.this.automation_account_name
}

output "runbook_type" {
  value = azurerm_automation_runbook.this.runbook_type
}

output "log_progress" {
  value = azurerm_automation_runbook.this.log_progress
}

output "log_verbose" {
  value = azurerm_automation_runbook.this.log_verbose
}

output "publish_content_link" {
  value = azurerm_automation_runbook.this.publish_content_link
}

output "description" {
  value = azurerm_automation_runbook.this.description
}

output "content" {
  value = azurerm_automation_runbook.this.content
}

output "tags" {
  value = azurerm_automation_runbook.this.tags
}

output "log_activity_trace_level" {
  value = azurerm_automation_runbook.this.log_activity_trace_level
}

output "draft" {
  value = azurerm_automation_runbook.this.draft
}

output "id" {
  description = "The Automation Runbook ID."
  value       = azurerm_automation_runbook.this.id
}

