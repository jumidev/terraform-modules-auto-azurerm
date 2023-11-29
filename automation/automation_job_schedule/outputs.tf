output "resource_group_name" {
  value = azurerm_automation_job_schedule.this.resource_group_name
}

output "automation_account_name" {
  value = azurerm_automation_job_schedule.this.automation_account_name
}

output "runbook_name" {
  value = azurerm_automation_job_schedule.this.runbook_name
}

output "schedule_name" {
  value = azurerm_automation_job_schedule.this.schedule_name
}

output "parameters" {
  value = azurerm_automation_job_schedule.this.parameters
}

output "run_on" {
  value = azurerm_automation_job_schedule.this.run_on
}

output "id" {
  description = "The ID of the Automation Job Schedule."
  value       = azurerm_automation_job_schedule.this.id
}

output "job_schedule_id" {
  description = "The UUID identifying the Automation Job Schedule."
  value       = azurerm_automation_job_schedule.this.job_schedule_id
}

