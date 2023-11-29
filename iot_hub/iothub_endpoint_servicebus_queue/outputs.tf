output "name" {
  value = azurerm_iothub_endpoint_servicebus_queue.this.name
}

output "resource_group_name" {
  value = azurerm_iothub_endpoint_servicebus_queue.this.resource_group_name
}

output "authentication_type" {
  value = azurerm_iothub_endpoint_servicebus_queue.this.authentication_type
}

output "identity_id" {
  value = azurerm_iothub_endpoint_servicebus_queue.this.identity_id
}

output "endpoint_uri" {
  value = azurerm_iothub_endpoint_servicebus_queue.this.endpoint_uri
}

output "entity_path" {
  value = azurerm_iothub_endpoint_servicebus_queue.this.entity_path
}

output "connection_string" {
  value     = azurerm_iothub_endpoint_servicebus_queue.this.connection_string
  sensitive = true
}

output "iothub_id" {
  value = azurerm_iothub_endpoint_servicebus_queue.this.iothub_id
}

output "id" {
  description = "The ID of the IoTHub ServiceBus Queue Endpoint."
  value       = azurerm_iothub_endpoint_servicebus_queue.this.id
}

