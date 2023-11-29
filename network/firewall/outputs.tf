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

output "id" {
  description = "The ID of the Azure Firewall."
  value       = azurerm_firewall.this.id
}

output "ip_configuration" {
  description = "A 'ip_configuration' block."
  value       = azurerm_firewall.this.ip_configuration
}

output "virtual_hub" {
  description = "A 'virtual_hub' block."
  value       = azurerm_firewall.this.virtual_hub
}

output "private_ip_address" {
  description = "The private IP address associated with the Firewall."
  value       = azurerm_firewall.this.private_ip_address
}

output "public_ip_addresses" {
  description = "The list of public IP addresses associated with the Firewall."
  value       = azurerm_firewall.this.public_ip_addresses
}

