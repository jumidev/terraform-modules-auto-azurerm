output "linked_redis_cache_id" {
  value = azurerm_redis_linked_server.this.linked_redis_cache_id
}

output "linked_redis_cache_location" {
  value = azurerm_redis_linked_server.this.linked_redis_cache_location
}

output "target_redis_cache_name" {
  value = azurerm_redis_linked_server.this.target_redis_cache_name
}

output "resource_group_name" {
  value = azurerm_redis_linked_server.this.resource_group_name
}

output "server_role" {
  value = azurerm_redis_linked_server.this.server_role
}

output "id" {
  description = "The ID of the Redis."
  value       = azurerm_redis_linked_server.this.id
}

output "name" {
  description = "The name of the linked server."
  value       = azurerm_redis_linked_server.this.name
}

