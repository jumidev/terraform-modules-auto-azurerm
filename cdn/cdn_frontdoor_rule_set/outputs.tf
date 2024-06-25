output "name" {
  value = azurerm_cdn_frontdoor_rule_set.this.name
}

output "cdn_frontdoor_profile_id" {
  value = azurerm_cdn_frontdoor_rule_set.this.cdn_frontdoor_profile_id
}

output "id" {
  description = "The ID of the Front Door Rule Set."
  value       = azurerm_cdn_frontdoor_rule_set.this.id
}

