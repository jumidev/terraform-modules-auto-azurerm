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

output "tls_version" {
  description = "The minimum TLS protocol version that is used for HTTPS. Possible values are 'TLS10' (representing TLS 1.0/1.1), 'TLS12' (representing TLS 1.2) and 'None' (representing no minimums). Defaults to 'TLS12'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_cdn_endpoint_custom_domain.this.tls_version
}

output "id" {
  description = "The ID of the CDN Endpoint Custom Domain."
  value       = azurerm_cdn_endpoint_custom_domain.this.id
}

