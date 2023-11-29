output "name" {
  value = azurerm_mobile_network_slice.this.name
}

output "mobile_network_id" {
  value = azurerm_mobile_network_slice.this.mobile_network_id
}

output "location" {
  value = azurerm_mobile_network_slice.this.location
}

output "single_network_slice_selection_assistance_information" {
  value = azurerm_mobile_network_slice.this.single_network_slice_selection_assistance_information
}

output "description" {
  value = azurerm_mobile_network_slice.this.description
}

output "tags" {
  value = azurerm_mobile_network_slice.this.tags
}

output "id" {
  description = "The ID of the Mobile Network Slice."
  value       = azurerm_mobile_network_slice.this.id
}

