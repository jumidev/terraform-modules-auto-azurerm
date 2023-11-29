output "name" {
  value = azurerm_iothub_shared_access_policy.this.name
}

output "resource_group_name" {
  value = azurerm_iothub_shared_access_policy.this.resource_group_name
}

output "iothub_name" {
  value = azurerm_iothub_shared_access_policy.this.iothub_name
}

output "registry_read" {
  value = azurerm_iothub_shared_access_policy.this.registry_read
}

output "registry_write" {
  value = azurerm_iothub_shared_access_policy.this.registry_write
}

output "service_connect" {
  value = azurerm_iothub_shared_access_policy.this.service_connect
}

output "device_connect" {
  value = azurerm_iothub_shared_access_policy.this.device_connect
}

output "id" {
  description = "The ID of the IoTHub Shared Access Policy."
  value       = azurerm_iothub_shared_access_policy.this.id
}

output "primary_key" {
  description = "The primary key used to create the authentication token."
  value       = azurerm_iothub_shared_access_policy.this.primary_key
}

output "primary_connection_string" {
  description = "The primary connection string of the Shared Access Policy."
  value       = azurerm_iothub_shared_access_policy.this.primary_connection_string
}

output "secondary_key" {
  description = "The secondary key used to create the authentication token."
  value       = azurerm_iothub_shared_access_policy.this.secondary_key
}

output "secondary_connection_string" {
  description = "The secondary connection string of the Shared Access Policy."
  value       = azurerm_iothub_shared_access_policy.this.secondary_connection_string
}

