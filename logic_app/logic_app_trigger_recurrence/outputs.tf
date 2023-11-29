output "name" {
  value = azurerm_logic_app_trigger_recurrence.this.name
}

output "logic_app_id" {
  value = azurerm_logic_app_trigger_recurrence.this.logic_app_id
}

output "frequency" {
  value = azurerm_logic_app_trigger_recurrence.this.frequency
}

output "interval" {
  value = azurerm_logic_app_trigger_recurrence.this.interval
}

output "start_time" {
  value = azurerm_logic_app_trigger_recurrence.this.start_time
}

output "time_zone" {
  value = azurerm_logic_app_trigger_recurrence.this.time_zone
}

output "schedule" {
  value = azurerm_logic_app_trigger_recurrence.this.schedule
}

output "id" {
  description = "The ID of the Recurrence Trigger within the Logic App Workflow."
  value       = azurerm_logic_app_trigger_recurrence.this.id
}

