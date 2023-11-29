output "name" {
  value = azurerm_cdn_endpoint_custom_domain.this.name
}

output "cdn_endpoint_id" {
  value = azurerm_cdn_endpoint_custom_domain.this.cdn_endpoint_id
}

output "host_name" {
  value = azurerm_cdn_endpoint_custom_domain.this.host_name
}

output "cdn_managed_https" {
  value = azurerm_cdn_endpoint_custom_domain.this.cdn_managed_https
}

output "user_managed_https" {
  value = azurerm_cdn_endpoint_custom_domain.this.user_managed_https
}

output "id" {
  description = "The ID of the CDN Endpoint Custom Domain."
  value       = azurerm_cdn_endpoint_custom_domain.this.id
}

