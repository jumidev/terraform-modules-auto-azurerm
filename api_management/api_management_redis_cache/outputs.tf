output "name" {
  value = azurerm_api_management_redis_cache.this.name
}

output "api_management_id" {
  value = azurerm_api_management_redis_cache.this.api_management_id
}

output "connection_string" {
  value     = azurerm_api_management_redis_cache.this.connection_string
  sensitive = true
}

output "description" {
  value = azurerm_api_management_redis_cache.this.description
}

output "redis_cache_id" {
  value = azurerm_api_management_redis_cache.this.redis_cache_id
}

output "cache_location" {
  value = azurerm_api_management_redis_cache.this.cache_location
}

output "id" {
  description = "The ID of the API Management Redis Cache."
  value       = azurerm_api_management_redis_cache.this.id
}

