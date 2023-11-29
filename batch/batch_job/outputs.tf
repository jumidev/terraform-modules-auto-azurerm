output "batch_pool_id" {
  value = azurerm_batch_job.this.batch_pool_id
}

output "name" {
  value = azurerm_batch_job.this.name
}

output "common_environment_properties" {
  value = azurerm_batch_job.this.common_environment_properties
}

output "display_name" {
  value = azurerm_batch_job.this.display_name
}

output "task_retry_maximum" {
  value = azurerm_batch_job.this.task_retry_maximum
}

output "priority" {
  value = azurerm_batch_job.this.priority
}

output "id" {
  description = "The ID of the Batch Job."
  value       = azurerm_batch_job.this.id
}

