output "name" {
  value = azurerm_databox_edge_device.this.name
}

output "resource_group_name" {
  value = azurerm_databox_edge_device.this.resource_group_name
}

output "location" {
  value = azurerm_databox_edge_device.this.location
}

output "sku_name" {
  value = azurerm_databox_edge_device.this.sku_name
}

output "tags" {
  value = azurerm_databox_edge_device.this.tags
}

output "id" {
  description = "The ID of the Databox Edge Device."
  value       = azurerm_databox_edge_device.this.id
}

output "device_properties" {
  description = "A 'device_properties' block."
  value       = azurerm_databox_edge_device.this.device_properties
}

output "configured_role_types" {
  description = "Type of compute roles configured."
  value       = azurerm_databox_edge_device.this.configured_role_types
}

output "culture" {
  description = "The Data Box Edge/Gateway device culture."
  value       = azurerm_databox_edge_device.this.culture
}

output "hcs_version" {
  description = "The device software version number of the device (e.g. 1.2.18105.6)."
  value       = azurerm_databox_edge_device.this.hcs_version
}

output "capacity" {
  description = "The Data Box Edge/Gateway device local capacity in MB."
  value       = azurerm_databox_edge_device.this.capacity
}

output "model" {
  description = "The Data Box Edge/Gateway device model."
  value       = azurerm_databox_edge_device.this.model
}

output "software_version" {
  description = "The Data Box Edge/Gateway device software version."
  value       = azurerm_databox_edge_device.this.software_version
}

output "status" {
  description = "The status of the Data Box Edge/Gateway device."
  value       = azurerm_databox_edge_device.this.status
}

output "type" {
  description = "The type of the Data Box Edge/Gateway device."
  value       = azurerm_databox_edge_device.this.type
}

output "node_count" {
  description = "The number of nodes in the cluster."
  value       = azurerm_databox_edge_device.this.node_count
}

output "serial_number" {
  description = "The Serial Number of Data Box Edge/Gateway device."
  value       = azurerm_databox_edge_device.this.serial_number
}

output "time_zone" {
  description = "The Data Box Edge/Gateway device timezone."
  value       = azurerm_databox_edge_device.this.time_zone
}

