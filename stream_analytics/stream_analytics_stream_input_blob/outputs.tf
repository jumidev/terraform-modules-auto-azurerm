output "name" {
  value = azurerm_stream_analytics_stream_input_blob.this.name
}

output "resource_group_name" {
  value = azurerm_stream_analytics_stream_input_blob.this.resource_group_name
}

output "stream_analytics_job_name" {
  value = azurerm_stream_analytics_stream_input_blob.this.stream_analytics_job_name
}

output "date_format" {
  value = azurerm_stream_analytics_stream_input_blob.this.date_format
}

output "path_pattern" {
  value = azurerm_stream_analytics_stream_input_blob.this.path_pattern
}

output "storage_account_name" {
  value = azurerm_stream_analytics_stream_input_blob.this.storage_account_name
}

output "storage_account_key" {
  value     = azurerm_stream_analytics_stream_input_blob.this.storage_account_key
  sensitive = true
}

output "storage_container_name" {
  value = azurerm_stream_analytics_stream_input_blob.this.storage_container_name
}

output "time_format" {
  value = azurerm_stream_analytics_stream_input_blob.this.time_format
}

output "serialization" {
  value = azurerm_stream_analytics_stream_input_blob.this.serialization
}

output "id" {
  description = "The ID of the Stream Analytics Stream Input Blob."
  value       = azurerm_stream_analytics_stream_input_blob.this.id
}

