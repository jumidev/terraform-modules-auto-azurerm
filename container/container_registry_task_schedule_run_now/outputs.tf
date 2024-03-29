output "container_registry_task_id" {
  value = azurerm_container_registry_task_schedule_run_now.this.container_registry_task_id
}

output "container_registry_task_id" {
  description = "The ID of the Container Registry Task that to be scheduled. Changing this forces a new Container Registry Task Schedule to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_container_registry_task_schedule_run_now.this.container_registry_task_id
}

output "id" {
  description = "The ID of the Container Registry Task Schedule."
  value       = azurerm_container_registry_task_schedule_run_now.this.id
}

