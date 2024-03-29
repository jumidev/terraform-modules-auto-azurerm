output "name" {
  value = azurerm_custom_ip_prefix.this.name
}

output "location" {
  value = azurerm_custom_ip_prefix.this.location
}

output "resource_group_name" {
  value = azurerm_custom_ip_prefix.this.resource_group_name
}

output "cidr" {
  value = azurerm_custom_ip_prefix.this.cidr
}

output "commissioning_enabled" {
  value = azurerm_custom_ip_prefix.this.commissioning_enabled
}

output "internet_advertising_disabled" {
  value = azurerm_custom_ip_prefix.this.internet_advertising_disabled
}

output "parent_custom_ip_prefix_id" {
  value = azurerm_custom_ip_prefix.this.parent_custom_ip_prefix_id
}

output "roa_validity_end_date" {
  value = azurerm_custom_ip_prefix.this.roa_validity_end_date
}

output "tags" {
  value = azurerm_custom_ip_prefix.this.tags
}

output "wan_validation_signed_message" {
  value = azurerm_custom_ip_prefix.this.wan_validation_signed_message
}

output "zones" {
  value = azurerm_custom_ip_prefix.this.zones
}

output "zones" {
  description = "Specifies a list of Availability Zones in which this Custom IP Prefix should be located. Should not be specified when creating an IPv6 global prefix. Changing this forces a new resource to be created. -> **Note:** In regions with [availability zones](https://docs.microsoft.com/en-us/azure/availability-zones/az-overview), the Custom IP Prefix must be specified as either 'Zone-redundant' or assigned to a specific zone. It can't be created with no zone specified in these regions. All IPs from the prefix must have the same zonal properties. The following attributes are exported:"
  value       = azurerm_custom_ip_prefix.this.zones
}

output "id" {
  description = "The ID of the Custom IP Prefix."
  value       = azurerm_custom_ip_prefix.this.id
}

