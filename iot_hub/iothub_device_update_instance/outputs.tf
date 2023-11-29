output "name" {
  value = azurerm_iothub_device_update_instance.this.name
}

output "device_update_account_id" {
  value = azurerm_iothub_device_update_instance.this.device_update_account_id
}

output "iothub_id" {
  value = azurerm_iothub_device_update_instance.this.iothub_id
}

output "diagnostic_storage_account" {
  value = azurerm_iothub_device_update_instance.this.diagnostic_storage_account
}

output "diagnostic_enabled" {
  value = azurerm_iothub_device_update_instance.this.diagnostic_enabled
}

output "tags" {
  value = azurerm_iothub_device_update_instance.this.tags
}

output "id" {
  description = "The ID of the IoT Hub Device Update Instance."
  value       = azurerm_iothub_device_update_instance.this.id
}

