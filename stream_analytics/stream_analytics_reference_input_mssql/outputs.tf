output "name" {
  value = azurerm_stream_analytics_reference_input_mssql.this.name
}

output "resource_group_name" {
  value = azurerm_stream_analytics_reference_input_mssql.this.resource_group_name
}

output "stream_analytics_job_name" {
  value = azurerm_stream_analytics_reference_input_mssql.this.stream_analytics_job_name
}

output "server" {
  value = azurerm_stream_analytics_reference_input_mssql.this.server
}

output "database" {
  value = azurerm_stream_analytics_reference_input_mssql.this.database
}

output "username" {
  value = azurerm_stream_analytics_reference_input_mssql.this.username
}

output "password" {
  value     = azurerm_stream_analytics_reference_input_mssql.this.password
  sensitive = true
}

output "refresh_type" {
  value = azurerm_stream_analytics_reference_input_mssql.this.refresh_type
}

output "refresh_interval_duration" {
  value = azurerm_stream_analytics_reference_input_mssql.this.refresh_interval_duration
}

output "full_snapshot_query" {
  value = azurerm_stream_analytics_reference_input_mssql.this.full_snapshot_query
}

output "delta_snapshot_query" {
  value = azurerm_stream_analytics_reference_input_mssql.this.delta_snapshot_query
}

output "table" {
  value = azurerm_stream_analytics_reference_input_mssql.this.table
}

output "id" {
  description = "The ID of the Stream Analytics."
  value       = azurerm_stream_analytics_reference_input_mssql.this.id
}

