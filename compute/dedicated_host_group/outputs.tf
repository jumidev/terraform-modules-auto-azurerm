output "name" {
  value = azurerm_dedicated_host_group.this.name
}

output "resource_group_name" {
  value = azurerm_dedicated_host_group.this.resource_group_name
}

output "location" {
  value = azurerm_dedicated_host_group.this.location
}

output "platform_fault_domain_count" {
  value = azurerm_dedicated_host_group.this.platform_fault_domain_count
}

output "automatic_placement_enabled" {
  value = azurerm_dedicated_host_group.this.automatic_placement_enabled
}

output "zone" {
  value = azurerm_dedicated_host_group.this.zone
}

output "tags" {
  value = azurerm_dedicated_host_group.this.tags
}

output "tags" {
  description = "A mapping of tags to assign to the resource. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_dedicated_host_group.this.tags
}

output "id" {
  description = "The ID of the Dedicated Host Group."
  value       = azurerm_dedicated_host_group.this.id
}

