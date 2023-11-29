output "name" {
  value = azurerm_dedicated_hardware_security_module.this.name
}

output "resource_group_name" {
  value = azurerm_dedicated_hardware_security_module.this.resource_group_name
}

output "location" {
  value = azurerm_dedicated_hardware_security_module.this.location
}

output "network_profile" {
  value = azurerm_dedicated_hardware_security_module.this.network_profile
}

output "sku_name" {
  value = azurerm_dedicated_hardware_security_module.this.sku_name
}

output "management_network_profile" {
  value = azurerm_dedicated_hardware_security_module.this.management_network_profile
}

output "stamp_id" {
  value = azurerm_dedicated_hardware_security_module.this.stamp_id
}

output "zones" {
  value = azurerm_dedicated_hardware_security_module.this.zones
}

output "tags" {
  value = azurerm_dedicated_hardware_security_module.this.tags
}

output "id" {
  description = "The ID of the Dedicated Hardware Security Module."
  value       = azurerm_dedicated_hardware_security_module.this.id
}

