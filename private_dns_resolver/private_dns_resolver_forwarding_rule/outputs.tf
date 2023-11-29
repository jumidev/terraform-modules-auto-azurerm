output "name" {
  value = azurerm_private_dns_resolver_forwarding_rule.this.name
}

output "dns_forwarding_ruleset_id" {
  value = azurerm_private_dns_resolver_forwarding_rule.this.dns_forwarding_ruleset_id
}

output "domain_name" {
  value = azurerm_private_dns_resolver_forwarding_rule.this.domain_name
}

output "target_dns_servers" {
  value = azurerm_private_dns_resolver_forwarding_rule.this.target_dns_servers
}

output "enabled" {
  value = azurerm_private_dns_resolver_forwarding_rule.this.enabled
}

output "metadata" {
  value = azurerm_private_dns_resolver_forwarding_rule.this.metadata
}

output "id" {
  description = "The ID of the Private DNS Resolver Forwarding Rule."
  value       = azurerm_private_dns_resolver_forwarding_rule.this.id
}

