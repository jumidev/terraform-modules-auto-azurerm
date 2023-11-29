output "location" {
  value = azurerm_palo_alto_next_generation_firewall_virtual_network_panorama.this.location
}

output "name" {
  value = azurerm_palo_alto_next_generation_firewall_virtual_network_panorama.this.name
}

output "network_profile" {
  value = azurerm_palo_alto_next_generation_firewall_virtual_network_panorama.this.network_profile
}

output "panorama_base64_config" {
  value = azurerm_palo_alto_next_generation_firewall_virtual_network_panorama.this.panorama_base64_config
}

output "resource_group_name" {
  value = azurerm_palo_alto_next_generation_firewall_virtual_network_panorama.this.resource_group_name
}

output "destination_nat" {
  value = azurerm_palo_alto_next_generation_firewall_virtual_network_panorama.this.destination_nat
}

output "dns_settings" {
  value = azurerm_palo_alto_next_generation_firewall_virtual_network_panorama.this.dns_settings
}

output "tags" {
  value = azurerm_palo_alto_next_generation_firewall_virtual_network_panorama.this.tags
}

output "id" {
  description = "The ID of the Palo Alto Next Generation Firewall Virtual Network Panorama."
  value       = azurerm_palo_alto_next_generation_firewall_virtual_network_panorama.this.id
}

output "panorama" {
  description = "A 'panorama' block."
  value       = azurerm_palo_alto_next_generation_firewall_virtual_network_panorama.this.panorama
}

output "device_group_name" {
  description = "The Device Group Name to which this Firewall Resource is registered."
  value       = azurerm_palo_alto_next_generation_firewall_virtual_network_panorama.this.device_group_name
}

output "host_name" {
  description = "The Host Name of this Firewall Resource."
  value       = azurerm_palo_alto_next_generation_firewall_virtual_network_panorama.this.host_name
}

output "name" {
  description = "The name of this Firewall Resource."
  value       = azurerm_palo_alto_next_generation_firewall_virtual_network_panorama.this.name
}

output "panorama_server_1" {
  description = "The name of the First Panorana server."
  value       = azurerm_palo_alto_next_generation_firewall_virtual_network_panorama.this.panorama_server_1
}

output "panorama_server_2" {
  description = "The name of the Second Panorana server."
  value       = azurerm_palo_alto_next_generation_firewall_virtual_network_panorama.this.panorama_server_2
}

output "template_name" {
  description = "The name of the Panorama Template applied to this Firewall Resource."
  value       = azurerm_palo_alto_next_generation_firewall_virtual_network_panorama.this.template_name
}

output "virtual_machine_ssh_key" {
  description = "The SSH Key to connect to the Firewall Resource."
  value       = azurerm_palo_alto_next_generation_firewall_virtual_network_panorama.this.virtual_machine_ssh_key
}

