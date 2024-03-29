output "name" {
  value = azurerm_container_registry_task.this.name
}

output "container_registry_id" {
  value = azurerm_container_registry_task.this.container_registry_id
}

output "agent_pool_name" {
  value = azurerm_container_registry_task.this.agent_pool_name
}

output "agent_setting" {
  value = azurerm_container_registry_task.this.agent_setting
}

output "enabled" {
  value = azurerm_container_registry_task.this.enabled
}

output "identity" {
  value = azurerm_container_registry_task.this.identity
}

output "platform" {
  value = azurerm_container_registry_task.this.platform
}

output "docker_step" {
  value = azurerm_container_registry_task.this.docker_step
}

output "encoded_step" {
  value = azurerm_container_registry_task.this.encoded_step
}

output "file_step" {
  value = azurerm_container_registry_task.this.file_step
}

output "base_image_trigger" {
  value = azurerm_container_registry_task.this.base_image_trigger
}

output "source_trigger" {
  value = azurerm_container_registry_task.this.source_trigger
}

output "timer_trigger" {
  value = azurerm_container_registry_task.this.timer_trigger
}

output "is_system_task" {
  value = azurerm_container_registry_task.this.is_system_task
}

output "log_template" {
  value = azurerm_container_registry_task.this.log_template
}

output "registry_credential" {
  value = azurerm_container_registry_task.this.registry_credential
}

output "tags" {
  value = azurerm_container_registry_task.this.tags
}

output "timeout_in_seconds" {
  value = azurerm_container_registry_task.this.timeout_in_seconds
}

output "enabled" {
  description = "Should the trigger be enabled? Defaults to 'true'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_container_registry_task.this.enabled
}

output "id" {
  description = "The ID of the Container Registry Task."
  value       = azurerm_container_registry_task.this.id
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_container_registry_task.this.identity
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_container_registry_task.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_container_registry_task.this.tenant_id
}

