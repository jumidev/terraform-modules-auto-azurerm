output "domain_name" {
  value = azurerm_static_site_custom_domain.this.domain_name
}

output "static_site_id" {
  value = azurerm_static_site_custom_domain.this.static_site_id
}

output "validation_type" {
  value = azurerm_static_site_custom_domain.this.validation_type
}

output "id" {
  description = "The ID of the Static Site Custom Domain."
  value       = azurerm_static_site_custom_domain.this.id
}

output "validation_token" {
  description = "Token to be used with 'dns-txt-token' validation."
  value       = azurerm_static_site_custom_domain.this.validation_token
}

