output "iothub_id" {
  value = azurerm_iothub_file_upload.this.iothub_id
}

output "connection_string" {
  value     = azurerm_iothub_file_upload.this.connection_string
  sensitive = true
}

output "container_name" {
  value = azurerm_iothub_file_upload.this.container_name
}

output "authentication_type" {
  value = azurerm_iothub_file_upload.this.authentication_type
}

output "default_ttl" {
  value = azurerm_iothub_file_upload.this.default_ttl
}

output "identity_id" {
  value = azurerm_iothub_file_upload.this.identity_id
}

output "lock_duration" {
  value = azurerm_iothub_file_upload.this.lock_duration
}

output "max_delivery_count" {
  value = azurerm_iothub_file_upload.this.max_delivery_count
}

output "notifications_enabled" {
  value = azurerm_iothub_file_upload.this.notifications_enabled
}

output "sas_ttl" {
  value = azurerm_iothub_file_upload.this.sas_ttl
}

output "id" {
  description = "The ID of the IoT Hub."
  value       = azurerm_iothub_file_upload.this.id
}

