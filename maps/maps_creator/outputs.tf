output "name" {
  value = azurerm_maps_creator.this.name
}

output "maps_account_id" {
  value = azurerm_maps_creator.this.maps_account_id
}

output "location" {
  value = azurerm_maps_creator.this.location
}

output "storage_units" {
  value = azurerm_maps_creator.this.storage_units
}

output "tags" {
  value = azurerm_maps_creator.this.tags
}

output "id" {
  description = "The ID of the Azure Maps Creator."
  value       = azurerm_maps_creator.this.id
}

