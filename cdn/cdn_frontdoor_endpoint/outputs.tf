output "name" {
  value = azurerm_cdn_frontdoor_endpoint.this.name
}

output "cdn_frontdoor_profile_id" {
  value = azurerm_cdn_frontdoor_endpoint.this.cdn_frontdoor_profile_id
}

output "enabled" {
  value = azurerm_cdn_frontdoor_endpoint.this.enabled
}

output "tags" {
  value = azurerm_cdn_frontdoor_endpoint.this.tags
}

output "id" {
  description = "The ID of this Front Door Endpoint."
  value       = azurerm_cdn_frontdoor_endpoint.this.id
}

output "host_name" {
  description = "The host name of the Front Door Endpoint, in the format '{endpointName}.{dnsZone}' (for example, 'contoso.azureedge.net')."
  value       = azurerm_cdn_frontdoor_endpoint.this.host_name
}

