output "name" {
  value = azurerm_dev_test_schedule.this.name
}

output "location" {
  value = azurerm_dev_test_schedule.this.location
}

output "resource_group_name" {
  value = azurerm_dev_test_schedule.this.resource_group_name
}

output "lab_name" {
  value = azurerm_dev_test_schedule.this.lab_name
}

output "status" {
  value = azurerm_dev_test_schedule.this.status
}

output "task_type" {
  value = azurerm_dev_test_schedule.this.task_type
}

output "time_zone_id" {
  value = azurerm_dev_test_schedule.this.time_zone_id
}

output "tags" {
  value = azurerm_dev_test_schedule.this.tags
}

output "notification_settings" {
  value = azurerm_dev_test_schedule.this.notification_settings
}

output "weekly_recurrence" {
  value = azurerm_dev_test_schedule.this.weekly_recurrence
}

output "daily_recurrence" {
  value = azurerm_dev_test_schedule.this.daily_recurrence
}

output "hourly_recurrence" {
  value = azurerm_dev_test_schedule.this.hourly_recurrence
}

output "id" {
  description = "The ID of the DevTest Schedule."
  value       = azurerm_dev_test_schedule.this.id
}

