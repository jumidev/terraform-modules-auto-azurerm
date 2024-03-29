output "name" {
  value = azurerm_cdn_frontdoor_profile.this.name
}

output "resource_group_name" {
  value = azurerm_cdn_frontdoor_profile.this.resource_group_name
}

output "sku_name" {
  value = azurerm_cdn_frontdoor_profile.this.sku_name
}

output "response_timeout_seconds" {
  value = azurerm_cdn_frontdoor_profile.this.response_timeout_seconds
}

output "tags" {
  value = azurerm_cdn_frontdoor_profile.this.tags
}

output "tags" {
  description = "Specifies a mapping of tags to assign to the resource. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_cdn_frontdoor_profile.this.tags
}

output "id" {
  description = "The ID of this Front Door Profile."
  value       = azurerm_cdn_frontdoor_profile.this.id
}

output "resource_guid" {
  description = "The UUID of this Front Door Profile which will be sent in the HTTP Header as the 'X-Azure-FDID' attribute."
  value       = azurerm_cdn_frontdoor_profile.this.resource_guid
}

