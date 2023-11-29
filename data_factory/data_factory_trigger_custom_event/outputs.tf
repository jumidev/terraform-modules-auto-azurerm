output "name" {
  value = azurerm_data_factory_trigger_custom_event.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_trigger_custom_event.this.data_factory_id
}

output "eventgrid_topic_id" {
  value = azurerm_data_factory_trigger_custom_event.this.eventgrid_topic_id
}

output "events" {
  value = azurerm_data_factory_trigger_custom_event.this.events
}

output "pipeline" {
  value = azurerm_data_factory_trigger_custom_event.this.pipeline
}

output "activated" {
  value = azurerm_data_factory_trigger_custom_event.this.activated
}

output "additional_properties" {
  value = azurerm_data_factory_trigger_custom_event.this.additional_properties
}

output "annotations" {
  value = azurerm_data_factory_trigger_custom_event.this.annotations
}

output "description" {
  value = azurerm_data_factory_trigger_custom_event.this.description
}

output "subject_begins_with" {
  value = azurerm_data_factory_trigger_custom_event.this.subject_begins_with
}

output "subject_ends_with" {
  value = azurerm_data_factory_trigger_custom_event.this.subject_ends_with
}

output "id" {
  description = "The ID of the Data Factory Custom Event Trigger."
  value       = azurerm_data_factory_trigger_custom_event.this.id
}

