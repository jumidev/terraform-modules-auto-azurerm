output "name" {
  value = azurerm_stream_analytics_output_table.this.name
}

output "resource_group_name" {
  value = azurerm_stream_analytics_output_table.this.resource_group_name
}

output "stream_analytics_job_name" {
  value = azurerm_stream_analytics_output_table.this.stream_analytics_job_name
}

output "storage_account_name" {
  value = azurerm_stream_analytics_output_table.this.storage_account_name
}

output "storage_account_key" {
  value     = azurerm_stream_analytics_output_table.this.storage_account_key
  sensitive = true
}

output "table" {
  value = azurerm_stream_analytics_output_table.this.table
}

output "partition_key" {
  value = azurerm_stream_analytics_output_table.this.partition_key
}

output "row_key" {
  value = azurerm_stream_analytics_output_table.this.row_key
}

output "batch_size" {
  value = azurerm_stream_analytics_output_table.this.batch_size
}

output "columns_to_remove" {
  value = azurerm_stream_analytics_output_table.this.columns_to_remove
}

output "id" {
  description = "The ID of the Stream Analytics Output Table."
  value       = azurerm_stream_analytics_output_table.this.id
}

