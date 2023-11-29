output "name" {
  value = azurerm_iothub_device_update_account.this.name
}

output "resource_group_name" {
  value = azurerm_iothub_device_update_account.this.resource_group_name
}

output "location" {
  value = azurerm_iothub_device_update_account.this.location
}

output "identity" {
  value = azurerm_iothub_device_update_account.this.identity
}

output "public_network_access_enabled" {
  value = azurerm_iothub_device_update_account.this.public_network_access_enabled
}

output "sku" {
  value = azurerm_iothub_device_update_account.this.sku
}

output "tags" {
  value = azurerm_iothub_device_update_account.this.tags
}

output "id" {
  description = "The ID of the IoT Hub Device Update Account."
  value       = azurerm_iothub_device_update_account.this.id
}

output "host_name" {
  description = "The API host name of the IoT Hub Device Update Account."
  value       = azurerm_iothub_device_update_account.this.host_name
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_iothub_device_update_account.this.identity
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Managed Service Identity of this IoT Hub Device Update Account."
  value       = azurerm_iothub_device_update_account.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Managed Service Identity of this IoT Hub Device Update Account."
  value       = azurerm_iothub_device_update_account.this.tenant_id
}

