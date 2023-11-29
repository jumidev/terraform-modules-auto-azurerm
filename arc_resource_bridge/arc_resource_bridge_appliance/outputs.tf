output "name" {
  value = azurerm_arc_resource_bridge_appliance.this.name
}

output "resource_group_name" {
  value = azurerm_arc_resource_bridge_appliance.this.resource_group_name
}

output "location" {
  value = azurerm_arc_resource_bridge_appliance.this.location
}

output "distro" {
  value = azurerm_arc_resource_bridge_appliance.this.distro
}

output "identity" {
  value = azurerm_arc_resource_bridge_appliance.this.identity
}

output "infrastructure_provider" {
  value = azurerm_arc_resource_bridge_appliance.this.infrastructure_provider
}

output "public_key_base64" {
  value = azurerm_arc_resource_bridge_appliance.this.public_key_base64
}

output "tags" {
  value = azurerm_arc_resource_bridge_appliance.this.tags
}

output "id" {
  description = "The ID of the Arc Resource Bridge Appliance."
  value       = azurerm_arc_resource_bridge_appliance.this.id
}

