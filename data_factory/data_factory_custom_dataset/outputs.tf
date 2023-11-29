output "name" {
  value = azurerm_data_factory_custom_dataset.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_custom_dataset.this.data_factory_id
}

output "linked_service" {
  value = azurerm_data_factory_custom_dataset.this.linked_service
}

output "type" {
  value = azurerm_data_factory_custom_dataset.this.type
}

output "type_properties_json" {
  value = azurerm_data_factory_custom_dataset.this.type_properties_json
}

output "additional_properties" {
  value = azurerm_data_factory_custom_dataset.this.additional_properties
}

output "annotations" {
  value = azurerm_data_factory_custom_dataset.this.annotations
}

output "description" {
  value = azurerm_data_factory_custom_dataset.this.description
}

output "folder" {
  value = azurerm_data_factory_custom_dataset.this.folder
}

output "parameters" {
  value = azurerm_data_factory_custom_dataset.this.parameters
}

output "schema_json" {
  value = azurerm_data_factory_custom_dataset.this.schema_json
}

output "id" {
  description = "The ID of the Data Factory Dataset."
  value       = azurerm_data_factory_custom_dataset.this.id
}

