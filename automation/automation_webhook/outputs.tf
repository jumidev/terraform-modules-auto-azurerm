output "name" {
  value = azurerm_automation_webhook.this.name
}

output "resource_group_name" {
  value = azurerm_automation_webhook.this.resource_group_name
}

output "automation_account_name" {
  value = azurerm_automation_webhook.this.automation_account_name
}

output "expiry_time" {
  value = azurerm_automation_webhook.this.expiry_time
}

output "enabled" {
  value = azurerm_automation_webhook.this.enabled
}

output "runbook_name" {
  value = azurerm_automation_webhook.this.runbook_name
}

output "run_on_worker_group" {
  value = azurerm_automation_webhook.this.run_on_worker_group
}

output "parameters" {
  value = azurerm_automation_webhook.this.parameters
}

output "uri" {
  value = azurerm_automation_webhook.this.uri
}

output "id" {
  description = "The Automation Webhook ID."
  value       = azurerm_automation_webhook.this.id
}

output "uri" {
  description = "(Sensitive) Generated URI for this Webhook. Changing this forces a new resource to be created."
  value       = azurerm_automation_webhook.this.uri
}

