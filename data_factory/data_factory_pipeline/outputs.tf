output "name" {
  value = azurerm_data_factory_pipeline.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_pipeline.this.data_factory_id
}

output "description" {
  value = azurerm_data_factory_pipeline.this.description
}

output "annotations" {
  value = azurerm_data_factory_pipeline.this.annotations
}

output "concurrency" {
  value = azurerm_data_factory_pipeline.this.concurrency
}

output "folder" {
  value = azurerm_data_factory_pipeline.this.folder
}

output "moniter_metrics_after_duration" {
  value = azurerm_data_factory_pipeline.this.moniter_metrics_after_duration
}

output "parameters" {
  value = azurerm_data_factory_pipeline.this.parameters
}

output "variables" {
  value = azurerm_data_factory_pipeline.this.variables
}

output "activities_json" {
  value = azurerm_data_factory_pipeline.this.activities_json
}

output "id" {
  description = "The ID of the Data Factory Pipeline."
  value       = azurerm_data_factory_pipeline.this.id
}

