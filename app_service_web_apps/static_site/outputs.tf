output "name" {
  value = azurerm_static_site.this.name
}

output "location" {
  value = azurerm_static_site.this.location
}

output "resource_group_name" {
  value = azurerm_static_site.this.resource_group_name
}

output "sku_tier" {
  value = azurerm_static_site.this.sku_tier
}

output "sku_size" {
  value = azurerm_static_site.this.sku_size
}

output "identity" {
  value = azurerm_static_site.this.identity
}

output "app_settings" {
  value = azurerm_static_site.this.app_settings
}

output "tags" {
  value = azurerm_static_site.this.tags
}

output "id" {
  description = "The ID of the Static Web App."
  value       = azurerm_static_site.this.id
}

output "api_key" {
  description = "The API key of this Static Web App, which is used for later interacting with this Static Web App from other clients, e.g. GitHub Action."
  value       = azurerm_static_site.this.api_key
}

output "default_host_name" {
  description = "The default host name of the Static Web App."
  value       = azurerm_static_site.this.default_host_name
}

output "identity" {
  description = "An 'identity' block which contains the Managed Service Identity information for this resource."
  value       = azurerm_static_site.this.identity
}

output "type" {
  description = "The Type of Managed Identity assigned to this resource. Possible values are 'SystemAssigned', 'UserAssigned' and 'SystemAssigned, UserAssigned'."
  value       = azurerm_static_site.this.type
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_static_site.this.principal_id
}

