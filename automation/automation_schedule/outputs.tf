output "name" {
  value = azurerm_automation_schedule.this.name
}

output "resource_group_name" {
  value = azurerm_automation_schedule.this.resource_group_name
}

output "automation_account_name" {
  value = azurerm_automation_schedule.this.automation_account_name
}

output "frequency" {
  value = azurerm_automation_schedule.this.frequency
}

output "description" {
  value = azurerm_automation_schedule.this.description
}

output "interval" {
  value = azurerm_automation_schedule.this.interval
}

output "start_time" {
  value = azurerm_automation_schedule.this.start_time
}

output "expiry_time" {
  value = azurerm_automation_schedule.this.expiry_time
}

output "timezone" {
  value = azurerm_automation_schedule.this.timezone
}

output "week_days" {
  value = azurerm_automation_schedule.this.week_days
}

output "month_days" {
  value = azurerm_automation_schedule.this.month_days
}

output "id" {
  description = "The Automation Schedule ID."
  value       = azurerm_automation_schedule.this.id
}

