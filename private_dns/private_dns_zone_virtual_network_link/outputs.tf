output "name" {
  value = azurerm_private_dns_zone_virtual_network_link.this.name
}

output "private_dns_zone_name" {
  value = azurerm_private_dns_zone_virtual_network_link.this.private_dns_zone_name
}

output "resource_group_name" {
  value = azurerm_private_dns_zone_virtual_network_link.this.resource_group_name
}

output "virtual_network_id" {
  value = azurerm_private_dns_zone_virtual_network_link.this.virtual_network_id
}

output "registration_enabled" {
  value = azurerm_private_dns_zone_virtual_network_link.this.registration_enabled
}

output "tags" {
  value = azurerm_private_dns_zone_virtual_network_link.this.tags
}

output "id" {
  description = "The ID of the Private DNS Zone Virtual Network Link."
  value       = azurerm_private_dns_zone_virtual_network_link.this.id
}

