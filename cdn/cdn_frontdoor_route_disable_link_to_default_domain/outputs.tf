output "cdn_frontdoor_route_id" {
  value = azurerm_cdn_frontdoor_route_disable_link_to_default_domain.this.cdn_frontdoor_route_id
}

output "cdn_frontdoor_custom_domain_ids" {
  value = azurerm_cdn_frontdoor_route_disable_link_to_default_domain.this.cdn_frontdoor_custom_domain_ids
}

output "cdn_frontdoor_custom_domain_ids" {
  description = "The resource IDs of the Front Door Custom Domains which are associated with this Front Door Route. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_cdn_frontdoor_route_disable_link_to_default_domain.this.cdn_frontdoor_custom_domain_ids
}

output "id" {
  description = "The ID of the Front Door Route Disable Link To Default Domain."
  value       = azurerm_cdn_frontdoor_route_disable_link_to_default_domain.this.id
}

