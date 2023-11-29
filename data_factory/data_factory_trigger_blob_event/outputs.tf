output "name" {
  value = azurerm_data_factory_trigger_blob_event.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_trigger_blob_event.this.data_factory_id
}

output "storage_account_id" {
  value = azurerm_data_factory_trigger_blob_event.this.storage_account_id
}

output "events" {
  value = azurerm_data_factory_trigger_blob_event.this.events
}

output "pipeline" {
  value = azurerm_data_factory_trigger_blob_event.this.pipeline
}

output "activated" {
  value = azurerm_data_factory_trigger_blob_event.this.activated
}

output "additional_properties" {
  value = azurerm_data_factory_trigger_blob_event.this.additional_properties
}

output "annotations" {
  value = azurerm_data_factory_trigger_blob_event.this.annotations
}

output "blob_path_begins_with" {
  value = azurerm_data_factory_trigger_blob_event.this.blob_path_begins_with
}

output "blob_path_ends_with" {
  value = azurerm_data_factory_trigger_blob_event.this.blob_path_ends_with
}

output "description" {
  value = azurerm_data_factory_trigger_blob_event.this.description
}

output "ignore_empty_blobs" {
  value = azurerm_data_factory_trigger_blob_event.this.ignore_empty_blobs
}

output "id" {
  description = "The ID of the Data Factory Blob Event Trigger."
  value       = azurerm_data_factory_trigger_blob_event.this.id
}

