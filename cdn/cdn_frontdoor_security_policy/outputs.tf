output "name" {
  value = azurerm_cdn_frontdoor_security_policy.this.name
}

output "cdn_frontdoor_profile_id" {
  value = azurerm_cdn_frontdoor_security_policy.this.cdn_frontdoor_profile_id
}

output "security_policies" {
  value = azurerm_cdn_frontdoor_security_policy.this.security_policies
}

output "id" {
  description = "The ID of the Front Door Security Policy."
  value       = azurerm_cdn_frontdoor_security_policy.this.id
}

