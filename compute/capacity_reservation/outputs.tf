output "name" {
  value = azurerm_capacity_reservation.this.name
}

output "capacity_reservation_group_id" {
  value = azurerm_capacity_reservation.this.capacity_reservation_group_id
}

output "sku" {
  value = azurerm_capacity_reservation.this.sku
}

output "zone" {
  value = azurerm_capacity_reservation.this.zone
}

output "tags" {
  value = azurerm_capacity_reservation.this.tags
}

output "capacity" {
  description = "Specifies the number of instances to be reserved. It must be greater than or equal to '0' and not exceed the quota in the subscription. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_capacity_reservation.this.capacity
}

output "id" {
  description = "The ID of the Capacity Reservation."
  value       = azurerm_capacity_reservation.this.id
}

