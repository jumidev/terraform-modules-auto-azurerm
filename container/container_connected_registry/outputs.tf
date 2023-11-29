output "container_registry_id" {
  value = azurerm_container_connected_registry.this.container_registry_id
}

output "name" {
  value = azurerm_container_connected_registry.this.name
}

output "sync_token_id" {
  value = azurerm_container_connected_registry.this.sync_token_id
}

output "audit_log_enabled" {
  value = azurerm_container_connected_registry.this.audit_log_enabled
}

output "client_token_ids" {
  value = azurerm_container_connected_registry.this.client_token_ids
}

output "log_level" {
  value = azurerm_container_connected_registry.this.log_level
}

output "mode" {
  value = azurerm_container_connected_registry.this.mode
}

output "notification" {
  value = azurerm_container_connected_registry.this.notification
}

output "parent_registry_id" {
  value = azurerm_container_connected_registry.this.parent_registry_id
}

output "sync_message_ttl" {
  value = azurerm_container_connected_registry.this.sync_message_ttl
}

output "sync_schedule" {
  value = azurerm_container_connected_registry.this.sync_schedule
}

output "sync_window" {
  value = azurerm_container_connected_registry.this.sync_window
}

output "id" {
  description = "The ID of the Container Connected Registry."
  value       = azurerm_container_connected_registry.this.id
}

