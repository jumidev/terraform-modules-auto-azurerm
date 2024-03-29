output "virtual_network_id" {
  value = azurerm_virtual_network_dns_servers.this.virtual_network_id
}

output "dns_servers" {
  value = azurerm_virtual_network_dns_servers.this.dns_servers
}

output "dns_servers" {
  description = "List of IP addresses of DNS servers In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_virtual_network_dns_servers.this.dns_servers
}

output "id" {
  description = "The virtual network DNS server ID."
  value       = azurerm_virtual_network_dns_servers.this.id
}

