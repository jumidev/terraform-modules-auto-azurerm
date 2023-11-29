output "location" {
  value = azurerm_dev_test_global_vm_shutdown_schedule.this.location
}

output "virtual_machine_id" {
  value = azurerm_dev_test_global_vm_shutdown_schedule.this.virtual_machine_id
}

output "enabled" {
  value = azurerm_dev_test_global_vm_shutdown_schedule.this.enabled
}

output "timezone" {
  value = azurerm_dev_test_global_vm_shutdown_schedule.this.timezone
}

output "tags" {
  value = azurerm_dev_test_global_vm_shutdown_schedule.this.tags
}

output "daily_recurrence_time" {
  value = azurerm_dev_test_global_vm_shutdown_schedule.this.daily_recurrence_time
}

output "notification_settings" {
  value = azurerm_dev_test_global_vm_shutdown_schedule.this.notification_settings
}

output "id" {
  description = "The Dev Test Global Schedule ID."
  value       = azurerm_dev_test_global_vm_shutdown_schedule.this.id
}

