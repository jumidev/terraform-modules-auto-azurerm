output "container_registry_task_id" {
  value = azurerm_container_registry_task_schedule_run_now.this.container_registry_task_id
}

output "id" {
  description = "The ID of the Container Registry Task Schedule."
  value       = azurerm_container_registry_task_schedule_run_now.this.id
}

