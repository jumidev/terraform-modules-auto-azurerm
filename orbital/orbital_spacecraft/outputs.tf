output "name" {
  value = azurerm_orbital_spacecraft.this.name
}

output "resource_group_name" {
  value = azurerm_orbital_spacecraft.this.resource_group_name
}

output "location" {
  value = azurerm_orbital_spacecraft.this.location
}

output "norad_id" {
  value = azurerm_orbital_spacecraft.this.norad_id
}

output "links" {
  value = azurerm_orbital_spacecraft.this.links
}

output "two_line_elements" {
  value = azurerm_orbital_spacecraft.this.two_line_elements
}

output "title_line" {
  value = azurerm_orbital_spacecraft.this.title_line
}

output "tags" {
  value = azurerm_orbital_spacecraft.this.tags
}

output "id" {
  description = "The ID of the Spacecraft."
  value       = azurerm_orbital_spacecraft.this.id
}

