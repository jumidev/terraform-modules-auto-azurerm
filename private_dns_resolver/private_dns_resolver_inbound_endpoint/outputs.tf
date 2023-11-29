output "name" {
  value = azurerm_private_dns_resolver_inbound_endpoint.this.name
}

output "private_dns_resolver_id" {
  value = azurerm_private_dns_resolver_inbound_endpoint.this.private_dns_resolver_id
}

output "ip_configurations" {
  value = azurerm_private_dns_resolver_inbound_endpoint.this.ip_configurations
}

output "location" {
  value = azurerm_private_dns_resolver_inbound_endpoint.this.location
}

output "tags" {
  value = azurerm_private_dns_resolver_inbound_endpoint.this.tags
}

output "id" {
  description = "The ID of the Private DNS Resolver Inbound Endpoint."
  value       = azurerm_private_dns_resolver_inbound_endpoint.this.id
}

output "private_ip_address" {
  description = "Private IP address of the IP configuration."
  value       = azurerm_private_dns_resolver_inbound_endpoint.this.private_ip_address
}

