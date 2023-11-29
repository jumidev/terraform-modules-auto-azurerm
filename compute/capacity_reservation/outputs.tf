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

output "id" {
  description = "The ID of the Capacity Reservation."
  value       = azurerm_capacity_reservation.this.id
}

