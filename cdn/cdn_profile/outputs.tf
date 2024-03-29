output "name" {
  value = azurerm_cdn_profile.this.name
}

output "resource_group_name" {
  value = azurerm_cdn_profile.this.resource_group_name
}

output "location" {
  value = azurerm_cdn_profile.this.location
}

output "sku" {
  value = azurerm_cdn_profile.this.sku
}

output "tags" {
  value = azurerm_cdn_profile.this.tags
}

output "tags" {
  description = "A mapping of tags to assign to the resource. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_cdn_profile.this.tags
}

output "id" {
  description = "The ID of the CDN Profile."
  value       = azurerm_cdn_profile.this.id
}

