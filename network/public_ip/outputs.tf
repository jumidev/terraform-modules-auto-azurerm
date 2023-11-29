output "name" {
  value = azurerm_public_ip.this.name
}

output "resource_group_name" {
  value = azurerm_public_ip.this.resource_group_name
}

output "location" {
  value = azurerm_public_ip.this.location
}

output "allocation_method" {
  value = azurerm_public_ip.this.allocation_method
}

output "zones" {
  value = azurerm_public_ip.this.zones
}

output "ddos_protection_mode" {
  value = azurerm_public_ip.this.ddos_protection_mode
}

output "ddos_protection_plan_id" {
  value = azurerm_public_ip.this.ddos_protection_plan_id
}

output "domain_name_label" {
  value = azurerm_public_ip.this.domain_name_label
}

output "edge_zone" {
  value = azurerm_public_ip.this.edge_zone
}

output "idle_timeout_in_minutes" {
  value = azurerm_public_ip.this.idle_timeout_in_minutes
}

output "ip_tags" {
  value = azurerm_public_ip.this.ip_tags
}

output "ip_version" {
  value = azurerm_public_ip.this.ip_version
}

output "public_ip_prefix_id" {
  value = azurerm_public_ip.this.public_ip_prefix_id
}

output "reverse_fqdn" {
  value = azurerm_public_ip.this.reverse_fqdn
}

output "sku" {
  value = azurerm_public_ip.this.sku
}

output "sku_tier" {
  value = azurerm_public_ip.this.sku_tier
}

output "tags" {
  value = azurerm_public_ip.this.tags
}

output "id" {
  description = "The ID of this Public IP."
  value       = azurerm_public_ip.this.id
}

output "ip_address" {
  description = "The IP address value that was allocated."
  value       = azurerm_public_ip.this.ip_address
}

output "fqdn" {
  description = "Fully qualified domain name of the A DNS record associated with the public IP. 'domain_name_label' must be specified to get the 'fqdn'. This is the concatenation of the 'domain_name_label' and the regionalized DNS zone"
  value       = azurerm_public_ip.this.fqdn
}

