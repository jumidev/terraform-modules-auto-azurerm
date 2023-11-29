output "name" {
  value = azurerm_orbital_contact.this.name
}

output "spacecraft_id" {
  value = azurerm_orbital_contact.this.spacecraft_id
}

output "reservation_start_time" {
  value = azurerm_orbital_contact.this.reservation_start_time
}

output "reservation_end_time" {
  value = azurerm_orbital_contact.this.reservation_end_time
}

output "ground_station_name" {
  value = azurerm_orbital_contact.this.ground_station_name
}

output "contact_profile_id" {
  value = azurerm_orbital_contact.this.contact_profile_id
}

output "id" {
  description = "The ID of the Contact."
  value       = azurerm_orbital_contact.this.id
}

