output "name" {
  value = azurerm_capacity_reservation_group.this.name
}

output "resource_group_name" {
  value = azurerm_capacity_reservation_group.this.resource_group_name
}

output "location" {
  value = azurerm_capacity_reservation_group.this.location
}

output "zones" {
  value = azurerm_capacity_reservation_group.this.zones
}

output "tags" {
  value = azurerm_capacity_reservation_group.this.tags
}

output "tags" {
  description = "A mapping of tags to assign to the resource. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_capacity_reservation_group.this.tags
}

output "id" {
  description = "The ID of the Capacity Reservation Group."
  value       = azurerm_capacity_reservation_group.this.id
}

