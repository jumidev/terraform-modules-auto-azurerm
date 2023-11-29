output "name" {
  value = azurerm_private_dns_resolver_dns_forwarding_ruleset.this.name
}

output "resource_group_name" {
  value = azurerm_private_dns_resolver_dns_forwarding_ruleset.this.resource_group_name
}

output "private_dns_resolver_outbound_endpoint_ids" {
  value = azurerm_private_dns_resolver_dns_forwarding_ruleset.this.private_dns_resolver_outbound_endpoint_ids
}

output "location" {
  value = azurerm_private_dns_resolver_dns_forwarding_ruleset.this.location
}

output "tags" {
  value = azurerm_private_dns_resolver_dns_forwarding_ruleset.this.tags
}

output "id" {
  description = "The ID of the Private DNS Resolver Dns Forwarding Ruleset."
  value       = azurerm_private_dns_resolver_dns_forwarding_ruleset.this.id
}

