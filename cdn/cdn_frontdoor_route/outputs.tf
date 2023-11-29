output "name" {
  value = azurerm_cdn_frontdoor_route.this.name
}

output "cdn_frontdoor_endpoint_id" {
  value = azurerm_cdn_frontdoor_route.this.cdn_frontdoor_endpoint_id
}

output "cdn_frontdoor_origin_group_id" {
  value = azurerm_cdn_frontdoor_route.this.cdn_frontdoor_origin_group_id
}

output "cdn_frontdoor_origin_ids" {
  value = azurerm_cdn_frontdoor_route.this.cdn_frontdoor_origin_ids
}

output "forwarding_protocol" {
  value = azurerm_cdn_frontdoor_route.this.forwarding_protocol
}

output "patterns_to_match" {
  value = azurerm_cdn_frontdoor_route.this.patterns_to_match
}

output "supported_protocols" {
  value = azurerm_cdn_frontdoor_route.this.supported_protocols
}

output "cache" {
  value = azurerm_cdn_frontdoor_route.this.cache
}

output "cdn_frontdoor_custom_domain_ids" {
  value = azurerm_cdn_frontdoor_route.this.cdn_frontdoor_custom_domain_ids
}

output "cdn_frontdoor_origin_path" {
  value = azurerm_cdn_frontdoor_route.this.cdn_frontdoor_origin_path
}

output "cdn_frontdoor_rule_set_ids" {
  value = azurerm_cdn_frontdoor_route.this.cdn_frontdoor_rule_set_ids
}

output "enabled" {
  value = azurerm_cdn_frontdoor_route.this.enabled
}

output "https_redirect_enabled" {
  value = azurerm_cdn_frontdoor_route.this.https_redirect_enabled
}

output "link_to_default_domain" {
  value = azurerm_cdn_frontdoor_route.this.link_to_default_domain
}

output "id" {
  description = "The ID of the Front Door Route."
  value       = azurerm_cdn_frontdoor_route.this.id
}

