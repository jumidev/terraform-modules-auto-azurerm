output "name" {
  value = azurerm_redis_cache_access_policy_assignment.this.name
}

output "redis_cache_id" {
  value = azurerm_redis_cache_access_policy_assignment.this.redis_cache_id
}

output "access_policy_name" {
  value = azurerm_redis_cache_access_policy_assignment.this.access_policy_name
}

output "object_id" {
  value = azurerm_redis_cache_access_policy_assignment.this.object_id
}

output "object_id_alias" {
  value = azurerm_redis_cache_access_policy_assignment.this.object_id_alias
}

output "id" {
  description = "The ID of the Redis Cache Access Policy Assignment."
  value       = azurerm_redis_cache_access_policy_assignment.this.id
}

