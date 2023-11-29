output "name" {
  value = azurerm_stream_analytics_job.this.name
}

output "resource_group_name" {
  value = azurerm_stream_analytics_job.this.resource_group_name
}

output "location" {
  value = azurerm_stream_analytics_job.this.location
}

output "stream_analytics_cluster_id" {
  value = azurerm_stream_analytics_job.this.stream_analytics_cluster_id
}

output "compatibility_level" {
  value = azurerm_stream_analytics_job.this.compatibility_level
}

output "data_locale" {
  value = azurerm_stream_analytics_job.this.data_locale
}

output "events_late_arrival_max_delay_in_seconds" {
  value = azurerm_stream_analytics_job.this.events_late_arrival_max_delay_in_seconds
}

output "events_out_of_order_max_delay_in_seconds" {
  value = azurerm_stream_analytics_job.this.events_out_of_order_max_delay_in_seconds
}

output "events_out_of_order_policy" {
  value = azurerm_stream_analytics_job.this.events_out_of_order_policy
}

output "type" {
  value = azurerm_stream_analytics_job.this.type
}

output "identity" {
  value = azurerm_stream_analytics_job.this.identity
}

output "output_error_policy" {
  value = azurerm_stream_analytics_job.this.output_error_policy
}

output "streaming_units" {
  value = azurerm_stream_analytics_job.this.streaming_units
}

output "content_storage_policy" {
  value = azurerm_stream_analytics_job.this.content_storage_policy
}

output "job_storage_account" {
  value = azurerm_stream_analytics_job.this.job_storage_account
}

output "id" {
  description = "The ID of the Stream Analytics Job."
  value       = azurerm_stream_analytics_job.this.id
}

output "job_id" {
  description = "The Job ID assigned by the Stream Analytics Job."
  value       = azurerm_stream_analytics_job.this.job_id
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_stream_analytics_job.this.identity
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_stream_analytics_job.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_stream_analytics_job.this.tenant_id
}

