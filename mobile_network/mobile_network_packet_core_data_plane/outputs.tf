output "name" {
  value = azurerm_mobile_network_packet_core_data_plane.this.name
}

output "mobile_network_packet_core_control_plane_id" {
  value = azurerm_mobile_network_packet_core_data_plane.this.mobile_network_packet_core_control_plane_id
}

output "location" {
  value = azurerm_mobile_network_packet_core_data_plane.this.location
}

output "user_plane_access_name" {
  value = azurerm_mobile_network_packet_core_data_plane.this.user_plane_access_name
}

output "user_plane_access_ipv4_address" {
  value = azurerm_mobile_network_packet_core_data_plane.this.user_plane_access_ipv4_address
}

output "user_plane_access_ipv4_subnet" {
  value = azurerm_mobile_network_packet_core_data_plane.this.user_plane_access_ipv4_subnet
}

output "user_plane_access_ipv4_gateway" {
  value = azurerm_mobile_network_packet_core_data_plane.this.user_plane_access_ipv4_gateway
}

output "tags" {
  value = azurerm_mobile_network_packet_core_data_plane.this.tags
}

output "id" {
  description = "The ID of the Mobile Network Packet Core Data Plane."
  value       = azurerm_mobile_network_packet_core_data_plane.this.id
}

