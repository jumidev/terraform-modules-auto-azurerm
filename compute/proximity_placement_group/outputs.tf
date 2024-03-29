output "name" {
  value = azurerm_proximity_placement_group.this.name
}

output "resource_group_name" {
  value = azurerm_proximity_placement_group.this.resource_group_name
}

output "location" {
  value = azurerm_proximity_placement_group.this.location
}

output "allowed_vm_sizes" {
  value = azurerm_proximity_placement_group.this.allowed_vm_sizes
}

output "zone" {
  value = azurerm_proximity_placement_group.this.zone
}

output "tags" {
  value = azurerm_proximity_placement_group.this.tags
}

output "tags" {
  description = "A mapping of tags to assign to the resource. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_proximity_placement_group.this.tags
}

output "id" {
  description = "The ID of the Proximity Placement Group."
  value       = azurerm_proximity_placement_group.this.id
}

