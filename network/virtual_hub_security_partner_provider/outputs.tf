output "name" {
  value = azurerm_virtual_hub_security_partner_provider.this.name
}

output "resource_group_name" {
  value = azurerm_virtual_hub_security_partner_provider.this.resource_group_name
}

output "location" {
  value = azurerm_virtual_hub_security_partner_provider.this.location
}

output "security_provider_name" {
  value = azurerm_virtual_hub_security_partner_provider.this.security_provider_name
}

output "virtual_hub_id" {
  value = azurerm_virtual_hub_security_partner_provider.this.virtual_hub_id
}

output "tags" {
  value = azurerm_virtual_hub_security_partner_provider.this.tags
}

output "id" {
  description = "The ID of the Security Partner Provider."
  value       = azurerm_virtual_hub_security_partner_provider.this.id
}

