output "name" {
  value = azurerm_public_ip_prefix.this.name
}

output "resource_group_name" {
  value = azurerm_public_ip_prefix.this.resource_group_name
}

output "location" {
  value = azurerm_public_ip_prefix.this.location
}

output "sku" {
  value = azurerm_public_ip_prefix.this.sku
}

output "ip_version" {
  value = azurerm_public_ip_prefix.this.ip_version
}

output "prefix_length" {
  value = azurerm_public_ip_prefix.this.prefix_length
}

output "tags" {
  value = azurerm_public_ip_prefix.this.tags
}

output "zones" {
  value = azurerm_public_ip_prefix.this.zones
}

output "id" {
  description = "The Public IP Prefix ID."
  value       = azurerm_public_ip_prefix.this.id
}

output "ip_prefix" {
  description = "The IP address prefix value that was allocated."
  value       = azurerm_public_ip_prefix.this.ip_prefix
}

