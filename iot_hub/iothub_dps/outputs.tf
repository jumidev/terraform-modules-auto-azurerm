output "name" {
  value = azurerm_iothub_dps.this.name
}

output "resource_group_name" {
  value = azurerm_iothub_dps.this.resource_group_name
}

output "location" {
  value = azurerm_iothub_dps.this.location
}

output "allocation_policy" {
  value = azurerm_iothub_dps.this.allocation_policy
}

output "data_residency_enabled" {
  value = azurerm_iothub_dps.this.data_residency_enabled
}

output "sku" {
  value = azurerm_iothub_dps.this.sku
}

output "linked_hub" {
  value = azurerm_iothub_dps.this.linked_hub
}

output "public_network_access_enabled" {
  value = azurerm_iothub_dps.this.public_network_access_enabled
}

output "ip_filter_rule" {
  value = azurerm_iothub_dps.this.ip_filter_rule
}

output "tags" {
  value = azurerm_iothub_dps.this.tags
}

output "id" {
  description = "The ID of the IoT Device Provisioning Service."
  value       = azurerm_iothub_dps.this.id
}

output "device_provisioning_host_name" {
  description = "The device endpoint of the IoT Device Provisioning Service."
  value       = azurerm_iothub_dps.this.device_provisioning_host_name
}

output "id_scope" {
  description = "The unique identifier of the IoT Device Provisioning Service."
  value       = azurerm_iothub_dps.this.id_scope
}

output "service_operations_host_name" {
  description = "The service endpoint of the IoT Device Provisioning Service."
  value       = azurerm_iothub_dps.this.service_operations_host_name
}

