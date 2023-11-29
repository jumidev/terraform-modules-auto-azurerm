output "mobile_network_data_network_name" {
  value = azurerm_mobile_network_attached_data_network.this.mobile_network_data_network_name
}

output "mobile_network_packet_core_data_plane_id" {
  value = azurerm_mobile_network_attached_data_network.this.mobile_network_packet_core_data_plane_id
}

output "location" {
  value = azurerm_mobile_network_attached_data_network.this.location
}

output "user_plane_access_name" {
  value = azurerm_mobile_network_attached_data_network.this.user_plane_access_name
}

output "user_plane_access_ipv4_address" {
  value = azurerm_mobile_network_attached_data_network.this.user_plane_access_ipv4_address
}

output "user_plane_access_ipv4_subnet" {
  value = azurerm_mobile_network_attached_data_network.this.user_plane_access_ipv4_subnet
}

output "user_plane_access_ipv4_gateway" {
  value = azurerm_mobile_network_attached_data_network.this.user_plane_access_ipv4_gateway
}

output "dns_addresses" {
  value = azurerm_mobile_network_attached_data_network.this.dns_addresses
}

output "network_address_port_translation" {
  value = azurerm_mobile_network_attached_data_network.this.network_address_port_translation
}

output "user_equipment_address_pool_prefixes" {
  value = azurerm_mobile_network_attached_data_network.this.user_equipment_address_pool_prefixes
}

output "user_equipment_static_address_pool_prefixes" {
  value = azurerm_mobile_network_attached_data_network.this.user_equipment_static_address_pool_prefixes
}

output "tags" {
  value = azurerm_mobile_network_attached_data_network.this.tags
}

output "id" {
  description = "The ID of the Mobile Network Attached Data Network."
  value       = azurerm_mobile_network_attached_data_network.this.id
}

