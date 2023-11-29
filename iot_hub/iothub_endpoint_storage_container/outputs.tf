output "name" {
  value = azurerm_iothub_endpoint_storage_container.this.name
}

output "resource_group_name" {
  value = azurerm_iothub_endpoint_storage_container.this.resource_group_name
}

output "container_name" {
  value = azurerm_iothub_endpoint_storage_container.this.container_name
}

output "iothub_id" {
  value = azurerm_iothub_endpoint_storage_container.this.iothub_id
}

output "authentication_type" {
  value = azurerm_iothub_endpoint_storage_container.this.authentication_type
}

output "identity_id" {
  value = azurerm_iothub_endpoint_storage_container.this.identity_id
}

output "endpoint_uri" {
  value = azurerm_iothub_endpoint_storage_container.this.endpoint_uri
}

output "connection_string" {
  value     = azurerm_iothub_endpoint_storage_container.this.connection_string
  sensitive = true
}

output "batch_frequency_in_seconds" {
  value = azurerm_iothub_endpoint_storage_container.this.batch_frequency_in_seconds
}

output "max_chunk_size_in_bytes" {
  value = azurerm_iothub_endpoint_storage_container.this.max_chunk_size_in_bytes
}

output "encoding" {
  value = azurerm_iothub_endpoint_storage_container.this.encoding
}

output "file_name_format" {
  value = azurerm_iothub_endpoint_storage_container.this.file_name_format
}

output "id" {
  description = "The ID of the IoTHub Storage Container Endpoint."
  value       = azurerm_iothub_endpoint_storage_container.this.id
}

