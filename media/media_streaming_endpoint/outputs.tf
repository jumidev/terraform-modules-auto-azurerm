output "location" {
  value = azurerm_media_streaming_endpoint.this.location
}

output "media_services_account_name" {
  value = azurerm_media_streaming_endpoint.this.media_services_account_name
}

output "name" {
  value = azurerm_media_streaming_endpoint.this.name
}

output "resource_group_name" {
  value = azurerm_media_streaming_endpoint.this.resource_group_name
}

output "scale_units" {
  value = azurerm_media_streaming_endpoint.this.scale_units
}

output "access_control" {
  value = azurerm_media_streaming_endpoint.this.access_control
}

output "auto_start_enabled" {
  value = azurerm_media_streaming_endpoint.this.auto_start_enabled
}

output "cdn_enabled" {
  value = azurerm_media_streaming_endpoint.this.cdn_enabled
}

output "cdn_profile" {
  value = azurerm_media_streaming_endpoint.this.cdn_profile
}

output "cdn_provider" {
  value = azurerm_media_streaming_endpoint.this.cdn_provider
}

output "cross_site_access_policy" {
  value = azurerm_media_streaming_endpoint.this.cross_site_access_policy
}

output "custom_host_names" {
  value = azurerm_media_streaming_endpoint.this.custom_host_names
}

output "description" {
  value = azurerm_media_streaming_endpoint.this.description
}

output "max_cache_age_seconds" {
  value = azurerm_media_streaming_endpoint.this.max_cache_age_seconds
}

output "tags" {
  value = azurerm_media_streaming_endpoint.this.tags
}

output "id" {
  description = "The ID of the Streaming Endpoint."
  value       = azurerm_media_streaming_endpoint.this.id
}

output "host_name" {
  description = "The host name of the Streaming Endpoint."
  value       = azurerm_media_streaming_endpoint.this.host_name
}

output "sku" {
  description = "A 'sku' block defined as below."
  value       = azurerm_media_streaming_endpoint.this.sku
}

output "name" {
  description = "The sku name of Streaming Endpoint."
  value       = azurerm_media_streaming_endpoint.this.name
}

output "capacity" {
  description = "The sku capacity of Streaming Endpoint."
  value       = azurerm_media_streaming_endpoint.this.capacity
}

