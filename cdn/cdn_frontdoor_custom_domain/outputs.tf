output "name" {
  value = azurerm_cdn_frontdoor_custom_domain.this.name
}

output "cdn_frontdoor_profile_id" {
  value = azurerm_cdn_frontdoor_custom_domain.this.cdn_frontdoor_profile_id
}

output "host_name" {
  value = azurerm_cdn_frontdoor_custom_domain.this.host_name
}

output "dns_zone_id" {
  value = azurerm_cdn_frontdoor_custom_domain.this.dns_zone_id
}

output "id" {
  description = "The ID of the Front Door Custom Domain."
  value       = azurerm_cdn_frontdoor_custom_domain.this.id
}

output "expiration_date" {
  description = "The date time that the token expires."
  value       = azurerm_cdn_frontdoor_custom_domain.this.expiration_date
}

output "validation_token" {
  description = "Challenge used for DNS TXT record or file based validation."
  value       = azurerm_cdn_frontdoor_custom_domain.this.validation_token
}

output "cdn_frontdoor_custom_domain_id" {
  value = azurerm_cdn_frontdoor_custom_domain_association.this.*.cdn_frontdoor_custom_domain_id
}

output "cdn_frontdoor_route_ids" {
  value = azurerm_cdn_frontdoor_custom_domain_association.this.*.cdn_frontdoor_route_ids
}

output "cdn_frontdoor_route_ids" {
  description = "One or more IDs of the Front Door Route to which the Front Door Custom Domain is associated with. -> **NOTE:** This should include all of the Front Door Route resources that the Front Door Custom Domain is associated with. If the list of Front Door Routes is not complete you will receive the service side error 'This resource is still associated with a route. Please delete the association with the route first before deleting this resource' when you attempt to 'destroy'/'delete' your Front Door Custom Domain. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_cdn_frontdoor_custom_domain_association.this.*.cdn_frontdoor_route_ids
}

output "id" {
  description = "The ID of the Front Door Custom Domain Association."
  value       = azurerm_cdn_frontdoor_custom_domain_association.this.*.id
}

