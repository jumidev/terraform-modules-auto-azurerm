output "name" {
  value = azurerm_stream_analytics_output_mssql.this.name
}

output "resource_group_name" {
  value = azurerm_stream_analytics_output_mssql.this.resource_group_name
}

output "stream_analytics_job_name" {
  value = azurerm_stream_analytics_output_mssql.this.stream_analytics_job_name
}

output "server" {
  value = azurerm_stream_analytics_output_mssql.this.server
}

output "user" {
  value = azurerm_stream_analytics_output_mssql.this.user
}

output "database" {
  value = azurerm_stream_analytics_output_mssql.this.database
}

output "password" {
  value     = azurerm_stream_analytics_output_mssql.this.password
  sensitive = true
}

output "table" {
  value = azurerm_stream_analytics_output_mssql.this.table
}

output "max_batch_count" {
  value = azurerm_stream_analytics_output_mssql.this.max_batch_count
}

output "max_writer_count" {
  value = azurerm_stream_analytics_output_mssql.this.max_writer_count
}

output "authentication_mode" {
  value = azurerm_stream_analytics_output_mssql.this.authentication_mode
}

output "id" {
  description = "The ID of the Stream Analytics Output Microsoft SQL Server Database."
  value       = azurerm_stream_analytics_output_mssql.this.id
}

