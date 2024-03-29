output "name" {
  value = azurerm_private_dns_resolver.this.name
}

output "resource_group_name" {
  value = azurerm_private_dns_resolver.this.resource_group_name
}

output "location" {
  value = azurerm_private_dns_resolver.this.location
}

output "virtual_network_id" {
  value = azurerm_private_dns_resolver.this.virtual_network_id
}

output "tags" {
  value = azurerm_private_dns_resolver.this.tags
}

output "tags" {
  description = "A mapping of tags which should be assigned to the Private DNS Resolver. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_private_dns_resolver.this.tags
}

output "id" {
  description = "The ID of the DNS Resolver."
  value       = azurerm_private_dns_resolver.this.id
}

