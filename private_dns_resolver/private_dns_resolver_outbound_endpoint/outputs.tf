output "name" {
  value = azurerm_private_dns_resolver_outbound_endpoint.this.name
}

output "private_dns_resolver_id" {
  value = azurerm_private_dns_resolver_outbound_endpoint.this.private_dns_resolver_id
}

output "location" {
  value = azurerm_private_dns_resolver_outbound_endpoint.this.location
}

output "subnet_id" {
  value = azurerm_private_dns_resolver_outbound_endpoint.this.subnet_id
}

output "tags" {
  value = azurerm_private_dns_resolver_outbound_endpoint.this.tags
}

output "id" {
  description = "The ID of the Private DNS Resolver Outbound Endpoint."
  value       = azurerm_private_dns_resolver_outbound_endpoint.this.id
}

