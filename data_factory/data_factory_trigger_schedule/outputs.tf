output "name" {
  value = azurerm_data_factory_trigger_schedule.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_trigger_schedule.this.data_factory_id
}

output "description" {
  value = azurerm_data_factory_trigger_schedule.this.description
}

output "schedule" {
  value = azurerm_data_factory_trigger_schedule.this.schedule
}

output "start_time" {
  value = azurerm_data_factory_trigger_schedule.this.start_time
}

output "time_zone" {
  value = azurerm_data_factory_trigger_schedule.this.time_zone
}

output "end_time" {
  value = azurerm_data_factory_trigger_schedule.this.end_time
}

output "interval" {
  value = azurerm_data_factory_trigger_schedule.this.interval
}

output "frequency" {
  value = azurerm_data_factory_trigger_schedule.this.frequency
}

output "activated" {
  value = azurerm_data_factory_trigger_schedule.this.activated
}

output "pipeline" {
  value = azurerm_data_factory_trigger_schedule.this.pipeline
}

output "pipeline_name" {
  value = azurerm_data_factory_trigger_schedule.this.pipeline_name
}

output "pipeline_parameters" {
  value = azurerm_data_factory_trigger_schedule.this.pipeline_parameters
}

output "annotations" {
  value = azurerm_data_factory_trigger_schedule.this.annotations
}

output "id" {
  description = "The ID of the Data Factory Schedule Trigger."
  value       = azurerm_data_factory_trigger_schedule.this.id
}

