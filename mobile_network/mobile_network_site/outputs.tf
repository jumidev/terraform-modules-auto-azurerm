output "name" {
  value = azurerm_mobile_network_site.this.name
}

output "mobile_network_id" {
  value = azurerm_mobile_network_site.this.mobile_network_id
}

output "location" {
  value = azurerm_mobile_network_site.this.location
}

output "tags" {
  value = azurerm_mobile_network_site.this.tags
}

output "id" {
  description = "The ID of the Mobile Network Site."
  value       = azurerm_mobile_network_site.this.id
}

output "network_function_ids" {
  description = "An array of Id of Network Functions deployed on the site."
  value       = azurerm_mobile_network_site.this.network_function_ids
}

