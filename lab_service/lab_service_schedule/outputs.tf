output "name" {
  value = azurerm_lab_service_schedule.this.name
}

output "lab_id" {
  value = azurerm_lab_service_schedule.this.lab_id
}

output "stop_time" {
  value = azurerm_lab_service_schedule.this.stop_time
}

output "time_zone" {
  value = azurerm_lab_service_schedule.this.time_zone
}

output "notes" {
  value = azurerm_lab_service_schedule.this.notes
}

output "recurrence" {
  value = azurerm_lab_service_schedule.this.recurrence
}

output "start_time" {
  value = azurerm_lab_service_schedule.this.start_time
}

output "id" {
  description = "The ID of the Lab Service Schedule."
  value       = azurerm_lab_service_schedule.this.id
}

