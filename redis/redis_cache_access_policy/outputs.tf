output "name" {
  value = azurerm_redis_cache_access_policy.this.name
}

output "redis_cache_id" {
  value = azurerm_redis_cache_access_policy.this.redis_cache_id
}

output "permissions" {
  value = azurerm_redis_cache_access_policy.this.permissions
}

output "id" {
  description = "The ID of the Redis Cache Access Policy."
  value       = azurerm_redis_cache_access_policy.this.id
}

