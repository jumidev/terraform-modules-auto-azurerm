output "name" {
  value = azurerm_virtual_machine_packet_capture.this.name
}

output "network_watcher_id" {
  value = azurerm_virtual_machine_packet_capture.this.network_watcher_id
}

output "virtual_machine_id" {
  value = azurerm_virtual_machine_packet_capture.this.virtual_machine_id
}

output "maximum_bytes_per_packet" {
  value = azurerm_virtual_machine_packet_capture.this.maximum_bytes_per_packet
}

output "maximum_bytes_per_session" {
  value = azurerm_virtual_machine_packet_capture.this.maximum_bytes_per_session
}

output "maximum_capture_duration_in_seconds" {
  value = azurerm_virtual_machine_packet_capture.this.maximum_capture_duration_in_seconds
}

output "storage_location" {
  value = azurerm_virtual_machine_packet_capture.this.storage_location
}

output "filter" {
  value = azurerm_virtual_machine_packet_capture.this.filter
}

output "id" {
  description = "The Virtual Machine Packet Capture ID."
  value       = azurerm_virtual_machine_packet_capture.this.id
}

output "storage_location" {
  description = "A 'storage_location' block."
  value       = azurerm_virtual_machine_packet_capture.this.storage_location
}

output "storage_path" {
  description = "The URI of the storage path where the packet capture sessions are saved to."
  value       = azurerm_virtual_machine_packet_capture.this.storage_path
}

