output "name" {
  value = azurerm_firewall.this.name
}

output "resource_group_name" {
  value = azurerm_firewall.this.resource_group_name
}

output "location" {
  value = azurerm_firewall.this.location
}

output "sku_name" {
  value = azurerm_firewall.this.sku_name
}

output "sku_tier" {
  value = azurerm_firewall.this.sku_tier
}

output "firewall_policy_id" {
  value = azurerm_firewall.this.firewall_policy_id
}

output "ip_configuration" {
  value = azurerm_firewall.this.ip_configuration
}

output "dns_servers" {
  value = azurerm_firewall.this.dns_servers
}

output "dns_proxy_enabled" {
  value = azurerm_firewall.this.dns_proxy_enabled
}

output "private_ip_ranges" {
  value = azurerm_firewall.this.private_ip_ranges
}

output "management_ip_configuration" {
  value = azurerm_firewall.this.management_ip_configuration
}

output "threat_intel_mode" {
  value = azurerm_firewall.this.threat_intel_mode
}

output "virtual_hub" {
  value = azurerm_firewall.this.virtual_hub
}

output "zones" {
  value = azurerm_firewall.this.zones
}

output "tags" {
  value = azurerm_firewall.this.tags
}

output "public_ip_count" {
  description = "Specifies the number of public IPs to assign to the Firewall. Defaults to '1'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_firewall.this.public_ip_count
}

output "id" {
  description = "The ID of the Azure Firewall."
  value       = azurerm_firewall.this.id
}

output "private_ip_address" {
  description = "The private IP address associated with the Firewall."
  value       = azurerm_firewall.this.private_ip_address
}

output "public_ip_addresses" {
  description = "The list of public IP addresses associated with the Firewall."
  value       = azurerm_firewall.this.public_ip_addresses
}

