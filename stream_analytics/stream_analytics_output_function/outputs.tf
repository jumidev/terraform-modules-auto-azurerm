output "name" {
  value = azurerm_stream_analytics_output_function.this.name
}

output "resource_group_name" {
  value = azurerm_stream_analytics_output_function.this.resource_group_name
}

output "stream_analytics_job_name" {
  value = azurerm_stream_analytics_output_function.this.stream_analytics_job_name
}

output "api_key" {
  value = azurerm_stream_analytics_output_function.this.api_key
}

output "function_app" {
  value = azurerm_stream_analytics_output_function.this.function_app
}

output "function_name" {
  value = azurerm_stream_analytics_output_function.this.function_name
}

output "batch_max_count" {
  value = azurerm_stream_analytics_output_function.this.batch_max_count
}

output "batch_max_in_bytes" {
  value = azurerm_stream_analytics_output_function.this.batch_max_in_bytes
}

output "id" {
  description = "The ID of the Stream Analytics Output Function."
  value       = azurerm_stream_analytics_output_function.this.id
}

