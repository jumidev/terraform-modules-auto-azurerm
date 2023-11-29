output "name" {
  value = azurerm_data_factory_tumbling_window.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_tumbling_window.this.data_factory_id
}

output "frequency" {
  value = azurerm_data_factory_tumbling_window.this.frequency
}

output "interval" {
  value = azurerm_data_factory_tumbling_window.this.interval
}

output "pipeline" {
  value = azurerm_data_factory_tumbling_window.this.pipeline
}

output "start_time" {
  value = azurerm_data_factory_tumbling_window.this.start_time
}

output "activated" {
  value = azurerm_data_factory_tumbling_window.this.activated
}

output "additional_properties" {
  value = azurerm_data_factory_tumbling_window.this.additional_properties
}

output "annotations" {
  value = azurerm_data_factory_tumbling_window.this.annotations
}

output "delay" {
  value = azurerm_data_factory_tumbling_window.this.delay
}

output "description" {
  value = azurerm_data_factory_tumbling_window.this.description
}

output "end_time" {
  value = azurerm_data_factory_tumbling_window.this.end_time
}

output "max_concurrency" {
  value = azurerm_data_factory_tumbling_window.this.max_concurrency
}

output "retry" {
  value = azurerm_data_factory_tumbling_window.this.retry
}

output "trigger_dependency" {
  value = azurerm_data_factory_tumbling_window.this.trigger_dependency
}

output "id" {
  description = "The ID of the Data Factory Tumbling Window Trigger."
  value       = azurerm_data_factory_tumbling_window.this.id
}

