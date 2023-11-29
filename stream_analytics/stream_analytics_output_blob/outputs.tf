output "name" {
  value = azurerm_stream_analytics_output_blob.this.name
}

output "resource_group_name" {
  value = azurerm_stream_analytics_output_blob.this.resource_group_name
}

output "stream_analytics_job_name" {
  value = azurerm_stream_analytics_output_blob.this.stream_analytics_job_name
}

output "date_format" {
  value = azurerm_stream_analytics_output_blob.this.date_format
}

output "path_pattern" {
  value = azurerm_stream_analytics_output_blob.this.path_pattern
}

output "storage_account_name" {
  value = azurerm_stream_analytics_output_blob.this.storage_account_name
}

output "storage_container_name" {
  value = azurerm_stream_analytics_output_blob.this.storage_container_name
}

output "time_format" {
  value = azurerm_stream_analytics_output_blob.this.time_format
}

output "serialization" {
  value = azurerm_stream_analytics_output_blob.this.serialization
}

output "authentication_mode" {
  value = azurerm_stream_analytics_output_blob.this.authentication_mode
}

output "batch_max_wait_time" {
  value = azurerm_stream_analytics_output_blob.this.batch_max_wait_time
}

output "batch_min_rows" {
  value = azurerm_stream_analytics_output_blob.this.batch_min_rows
}

output "storage_account_key" {
  value     = azurerm_stream_analytics_output_blob.this.storage_account_key
  sensitive = true
}

output "id" {
  description = "The ID of the Stream Analytics Output Blob Storage."
  value       = azurerm_stream_analytics_output_blob.this.id
}

