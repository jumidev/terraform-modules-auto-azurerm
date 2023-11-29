output "name" {
  value = azurerm_palo_alto_network_virtual_appliance.this.name
}

output "virtual_hub_id" {
  value = azurerm_palo_alto_network_virtual_appliance.this.virtual_hub_id
}

output "id" {
  description = "The ID of the Palo Alto Local Network Virtual Appliance."
  value       = azurerm_palo_alto_network_virtual_appliance.this.id
}

