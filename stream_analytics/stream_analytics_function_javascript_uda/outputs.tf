output "name" {
  value = azurerm_stream_analytics_function_javascript_uda.this.name
}

output "stream_analytics_job_id" {
  value = azurerm_stream_analytics_function_javascript_uda.this.stream_analytics_job_id
}

output "input" {
  value = azurerm_stream_analytics_function_javascript_uda.this.input
}

output "output" {
  value = azurerm_stream_analytics_function_javascript_uda.this.output
}

output "script" {
  value = azurerm_stream_analytics_function_javascript_uda.this.script
}

output "id" {
  description = "The ID of the Stream Analytics JavaScript UDA Function."
  value       = azurerm_stream_analytics_function_javascript_uda.this.id
}

