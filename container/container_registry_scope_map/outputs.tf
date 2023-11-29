output "name" {
  value = azurerm_container_registry_scope_map.this.name
}

output "resource_group_name" {
  value = azurerm_container_registry_scope_map.this.resource_group_name
}

output "container_registry_name" {
  value = azurerm_container_registry_scope_map.this.container_registry_name
}

output "actions" {
  value = azurerm_container_registry_scope_map.this.actions
}

output "description" {
  value = azurerm_container_registry_scope_map.this.description
}

output "id" {
  description = "The ID of the Container Registry scope map."
  value       = azurerm_container_registry_scope_map.this.id
}

