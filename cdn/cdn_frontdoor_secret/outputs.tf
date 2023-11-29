output "name" {
  value = azurerm_cdn_frontdoor_secret.this.name
}

output "cdn_frontdoor_profile_id" {
  value = azurerm_cdn_frontdoor_secret.this.cdn_frontdoor_profile_id
}

output "secret" {
  value = azurerm_cdn_frontdoor_secret.this.secret
}

output "id" {
  description = "The ID of the Front Door Secret."
  value       = azurerm_cdn_frontdoor_secret.this.id
}

output "cdn_frontdoor_profile_name" {
  description = "The name of the Front Door Profile containing this Front Door Secret."
  value       = azurerm_cdn_frontdoor_secret.this.cdn_frontdoor_profile_name
}

