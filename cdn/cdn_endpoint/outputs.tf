output "name" {
  value = azurerm_cdn_endpoint.this.name
}

output "resource_group_name" {
  value = azurerm_cdn_endpoint.this.resource_group_name
}

output "profile_name" {
  value = azurerm_cdn_endpoint.this.profile_name
}

output "location" {
  value = azurerm_cdn_endpoint.this.location
}

output "is_http_allowed" {
  value = azurerm_cdn_endpoint.this.is_http_allowed
}

output "is_https_allowed" {
  value = azurerm_cdn_endpoint.this.is_https_allowed
}

output "content_types_to_compress" {
  value = azurerm_cdn_endpoint.this.content_types_to_compress
}

output "id" {
  description = "The ID of the CDN Endpoint."
  value       = azurerm_cdn_endpoint.this.id
}

output "fqdn" {
  description = "The Fully Qualified Domain Name of the CDN Endpoint."
  value       = azurerm_cdn_endpoint.this.fqdn
}

