output "name" {
  value = azurerm_network_packet_capture.this.name
}

output "network_watcher_name" {
  value = azurerm_network_packet_capture.this.network_watcher_name
}

output "resource_group_name" {
  value = azurerm_network_packet_capture.this.resource_group_name
}

output "target_resource_id" {
  value = azurerm_network_packet_capture.this.target_resource_id
}

output "maximum_bytes_per_packet" {
  value = azurerm_network_packet_capture.this.maximum_bytes_per_packet
}

output "maximum_bytes_per_session" {
  value = azurerm_network_packet_capture.this.maximum_bytes_per_session
}

output "maximum_capture_duration" {
  value = azurerm_network_packet_capture.this.maximum_capture_duration
}

output "storage_location" {
  value = azurerm_network_packet_capture.this.storage_location
}

output "filter" {
  value = azurerm_network_packet_capture.this.filter
}

output "id" {
  description = "The Packet Capture ID."
  value       = azurerm_network_packet_capture.this.id
}

output "storage_location" {
  description = "A 'storage_location' block."
  value       = azurerm_network_packet_capture.this.storage_location
}

output "storage_path" {
  description = "The URI of the storage path to save the packet capture."
  value       = azurerm_network_packet_capture.this.storage_path
}

