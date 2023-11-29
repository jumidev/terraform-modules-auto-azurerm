output "name" {
  value = azurerm_container_registry_token.this.name
}

output "resource_group_name" {
  value = azurerm_container_registry_token.this.resource_group_name
}

output "container_registry_name" {
  value = azurerm_container_registry_token.this.container_registry_name
}

output "scope_map_id" {
  value = azurerm_container_registry_token.this.scope_map_id
}

output "enabled" {
  value = azurerm_container_registry_token.this.enabled
}

output "id" {
  description = "The ID of the Container Registry token."
  value       = azurerm_container_registry_token.this.id
}

