output "name" {
  value = azurerm_mobile_network.this.name
}

output "resource_group_name" {
  value = azurerm_mobile_network.this.resource_group_name
}

output "location" {
  value = azurerm_mobile_network.this.location
}

output "mobile_country_code" {
  value = azurerm_mobile_network.this.mobile_country_code
}

output "mobile_network_code" {
  value = azurerm_mobile_network.this.mobile_network_code
}

output "tags" {
  value = azurerm_mobile_network.this.tags
}

output "id" {
  description = "The ID of the Mobile Network."
  value       = azurerm_mobile_network.this.id
}

output "service_key" {
  description = "The mobile network resource identifier."
  value       = azurerm_mobile_network.this.service_key
}

