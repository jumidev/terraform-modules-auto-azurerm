output "name" {
  value = azurerm_mobile_network_sim_group.this.name
}

output "location" {
  value = azurerm_mobile_network_sim_group.this.location
}

output "mobile_network_id" {
  value = azurerm_mobile_network_sim_group.this.mobile_network_id
}

output "encryption_key_url" {
  value = azurerm_mobile_network_sim_group.this.encryption_key_url
}

output "identity" {
  value = azurerm_mobile_network_sim_group.this.identity
}

output "tags" {
  value = azurerm_mobile_network_sim_group.this.tags
}

output "id" {
  description = "The ID of the Mobile Network Sim Groups."
  value       = azurerm_mobile_network_sim_group.this.id
}

