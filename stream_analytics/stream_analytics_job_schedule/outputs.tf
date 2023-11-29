output "stream_analytics_job_id" {
  value = azurerm_stream_analytics_job_schedule.this.stream_analytics_job_id
}

output "start_mode" {
  value = azurerm_stream_analytics_job_schedule.this.start_mode
}

output "start_time" {
  value = azurerm_stream_analytics_job_schedule.this.start_time
}

output "id" {
  description = "The ID of the Stream Analytics Job."
  value       = azurerm_stream_analytics_job_schedule.this.id
}

output "last_output_time" {
  description = "The time at which the Stream Analytics job last produced an output."
  value       = azurerm_stream_analytics_job_schedule.this.last_output_time
}

