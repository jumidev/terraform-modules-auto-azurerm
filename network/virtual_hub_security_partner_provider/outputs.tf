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

output "tags" {
  description = "A mapping of tags which should be assigned to the Security Partner Provider. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_virtual_hub_security_partner_provider.this.tags
}

output "id" {
  description = "The ID of the Security Partner Provider."
  value       = azurerm_virtual_hub_security_partner_provider.this.id
}

