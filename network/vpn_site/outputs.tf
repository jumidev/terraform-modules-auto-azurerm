output "location" {
  value = azurerm_vpn_site.this.location
}

output "name" {
  value = azurerm_vpn_site.this.name
}

output "resource_group_name" {
  value = azurerm_vpn_site.this.resource_group_name
}

output "virtual_wan_id" {
  value = azurerm_vpn_site.this.virtual_wan_id
}

output "link" {
  value = azurerm_vpn_site.this.link
}

output "address_cidrs" {
  value = azurerm_vpn_site.this.address_cidrs
}

output "device_model" {
  value = azurerm_vpn_site.this.device_model
}

output "device_vendor" {
  value = azurerm_vpn_site.this.device_vendor
}

output "o365_policy" {
  value = azurerm_vpn_site.this.o365_policy
}

output "tags" {
  value = azurerm_vpn_site.this.tags
}

output "optimize_endpoint_enabled" {
  description = "Is optimize endpoint enabled? The 'Optimize' endpoint is required for connectivity to every O365 service and represents the O365 scenario that is the most sensitive to network performance, latency, and availability. Defaults to 'false'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_vpn_site.this.optimize_endpoint_enabled
}

output "id" {
  description = "The ID of the VPN Site Link."
  value       = azurerm_vpn_site.this.id
}

