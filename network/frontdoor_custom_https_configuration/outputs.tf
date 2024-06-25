output "frontend_endpoint_id" {
  value = azurerm_frontdoor_custom_https_configuration.this.frontend_endpoint_id
}

output "custom_https_provisioning_enabled" {
  value = azurerm_frontdoor_custom_https_configuration.this.custom_https_provisioning_enabled
}

output "custom_https_configuration" {
  value = azurerm_frontdoor_custom_https_configuration.this.custom_https_configuration
}

output "id" {
  description = "The ID of the Azure Front Door Custom HTTPS Configuration."
  value       = azurerm_frontdoor_custom_https_configuration.this.id
}

output "minimum_tls_version" {
  description = "Minimum client TLS version supported."
  value       = azurerm_frontdoor_custom_https_configuration.this.minimum_tls_version
}

