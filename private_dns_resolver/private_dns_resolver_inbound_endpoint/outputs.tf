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

output "private_ip_allocation_method" {
  description = "Private IP address allocation method. Allowed value is 'Dynamic' and 'Static'. Defaults to 'Dynamic'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_private_dns_resolver_inbound_endpoint.this.private_ip_allocation_method
}

output "id" {
  description = "The ID of the Private DNS Resolver Inbound Endpoint."
  value       = azurerm_private_dns_resolver_inbound_endpoint.this.id
}

