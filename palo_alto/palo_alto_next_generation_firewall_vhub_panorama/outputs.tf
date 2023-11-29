output "name" {
  value = azurerm_palo_alto_next_generation_firewall_vhub_panorama.this.name
}

output "resource_group_name" {
  value = azurerm_palo_alto_next_generation_firewall_vhub_panorama.this.resource_group_name
}

output "location" {
  value = azurerm_palo_alto_next_generation_firewall_vhub_panorama.this.location
}

output "panorama_base64_config" {
  value = azurerm_palo_alto_next_generation_firewall_vhub_panorama.this.panorama_base64_config
}

output "network_profile" {
  value = azurerm_palo_alto_next_generation_firewall_vhub_panorama.this.network_profile
}

output "destination_nat" {
  value = azurerm_palo_alto_next_generation_firewall_vhub_panorama.this.destination_nat
}

output "dns_settings" {
  value = azurerm_palo_alto_next_generation_firewall_vhub_panorama.this.dns_settings
}

output "tags" {
  value = azurerm_palo_alto_next_generation_firewall_vhub_panorama.this.tags
}

output "id" {
  description = "The ID of the Palo Alto Next Generation Firewall VHub Panorama."
  value       = azurerm_palo_alto_next_generation_firewall_vhub_panorama.this.id
}

