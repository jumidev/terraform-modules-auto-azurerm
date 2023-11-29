output "resource_group_name" {
  value = azurerm_automation_hybrid_runbook_worker.this.resource_group_name
}

output "automation_account_name" {
  value = azurerm_automation_hybrid_runbook_worker.this.automation_account_name
}

output "worker_group_name" {
  value = azurerm_automation_hybrid_runbook_worker.this.worker_group_name
}

output "worker_id" {
  value = azurerm_automation_hybrid_runbook_worker.this.worker_id
}

output "vm_resource_id" {
  value = azurerm_automation_hybrid_runbook_worker.this.vm_resource_id
}

output "id" {
  description = "The ID of the Automation Hybrid Runbook Worker."
  value       = azurerm_automation_hybrid_runbook_worker.this.id
}

output "ip" {
  description = "The IP address of assigned machine."
  value       = azurerm_automation_hybrid_runbook_worker.this.ip
}

output "last_seen_date_time" {
  description = "Last Heartbeat from the Worker."
  value       = azurerm_automation_hybrid_runbook_worker.this.last_seen_date_time
}

output "registration_date_time" {
  description = "The registration time of the worker machine."
  value       = azurerm_automation_hybrid_runbook_worker.this.registration_date_time
}

output "worker_name" {
  description = "The name of HybridWorker."
  value       = azurerm_automation_hybrid_runbook_worker.this.worker_name
}

output "worker_type" {
  description = "The type of the HybridWorker, the possible values are 'HybridV1' and 'HybridV2'."
  value       = azurerm_automation_hybrid_runbook_worker.this.worker_type
}

