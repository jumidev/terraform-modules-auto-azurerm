output "name" {
  value = azurerm_private_dns_resolver_virtual_network_link.this.name
}

output "dns_forwarding_ruleset_id" {
  value = azurerm_private_dns_resolver_virtual_network_link.this.dns_forwarding_ruleset_id
}

output "virtual_network_id" {
  value = azurerm_private_dns_resolver_virtual_network_link.this.virtual_network_id
}

output "metadata" {
  value = azurerm_private_dns_resolver_virtual_network_link.this.metadata
}

output "id" {
  description = "The ID of the Private DNS Resolver Virtual Network Link."
  value       = azurerm_private_dns_resolver_virtual_network_link.this.id
}

