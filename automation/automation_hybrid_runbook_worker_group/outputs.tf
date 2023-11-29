output "automation_account_name" {
  value = azurerm_automation_hybrid_runbook_worker_group.this.automation_account_name
}

output "name" {
  value = azurerm_automation_hybrid_runbook_worker_group.this.name
}

output "resource_group_name" {
  value = azurerm_automation_hybrid_runbook_worker_group.this.resource_group_name
}

output "credential_name" {
  value = azurerm_automation_hybrid_runbook_worker_group.this.credential_name
}

output "id" {
  description = "The ID of the Automation Hybrid Runbook Worker Group."
  value       = azurerm_automation_hybrid_runbook_worker_group.this.id
}

