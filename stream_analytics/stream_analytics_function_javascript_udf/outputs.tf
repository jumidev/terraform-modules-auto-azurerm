output "name" {
  value = azurerm_stream_analytics_function_javascript_udf.this.name
}

output "resource_group_name" {
  value = azurerm_stream_analytics_function_javascript_udf.this.resource_group_name
}

output "stream_analytics_job_name" {
  value = azurerm_stream_analytics_function_javascript_udf.this.stream_analytics_job_name
}

output "input" {
  value = azurerm_stream_analytics_function_javascript_udf.this.input
}

output "output" {
  value = azurerm_stream_analytics_function_javascript_udf.this.output
}

output "script" {
  value = azurerm_stream_analytics_function_javascript_udf.this.script
}

output "id" {
  description = "The ID of the Stream Analytics JavaScript UDF Function."
  value       = azurerm_stream_analytics_function_javascript_udf.this.id
}

