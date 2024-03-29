output "container_app_environment_id" {
  value = azurerm_container_app_environment_dapr_component.this.container_app_environment_id
}

output "name" {
  value = azurerm_container_app_environment_dapr_component.this.name
}

output "component_type" {
  value = azurerm_container_app_environment_dapr_component.this.component_type
}

output "version" {
  value = azurerm_container_app_environment_dapr_component.this.version
}

output "ignore_errors" {
  value = azurerm_container_app_environment_dapr_component.this.ignore_errors
}

output "init_timeout" {
  value = azurerm_container_app_environment_dapr_component.this.init_timeout
}

output "metadata" {
  value = azurerm_container_app_environment_dapr_component.this.metadata
}

output "scopes" {
  value = azurerm_container_app_environment_dapr_component.this.scopes
}

output "secret" {
  value = azurerm_container_app_environment_dapr_component.this.secret
}

output "value" {
  description = "The value for this secret. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_container_app_environment_dapr_component.this.value
}

output "id" {
  description = "The ID of the Container App Environment Dapr Component"
  value       = azurerm_container_app_environment_dapr_component.this.id
}

