output "name" {
  value = azurerm_availability_set.this.name
}

output "resource_group_name" {
  value = azurerm_availability_set.this.resource_group_name
}

output "location" {
  value = azurerm_availability_set.this.location
}

output "platform_update_domain_count" {
  value = azurerm_availability_set.this.platform_update_domain_count
}

output "platform_fault_domain_count" {
  value = azurerm_availability_set.this.platform_fault_domain_count
}

output "proximity_placement_group_id" {
  value = azurerm_availability_set.this.proximity_placement_group_id
}

output "managed" {
  value = azurerm_availability_set.this.managed
}

output "tags" {
  value = azurerm_availability_set.this.tags
}

output "id" {
  description = "The ID of the Availability Set."
  value       = azurerm_availability_set.this.id
}

