output "name" {
  value = azurerm_iothub_endpoint_servicebus_topic.this.name
}

output "resource_group_name" {
  value = azurerm_iothub_endpoint_servicebus_topic.this.resource_group_name
}

output "authentication_type" {
  value = azurerm_iothub_endpoint_servicebus_topic.this.authentication_type
}

output "identity_id" {
  value = azurerm_iothub_endpoint_servicebus_topic.this.identity_id
}

output "endpoint_uri" {
  value = azurerm_iothub_endpoint_servicebus_topic.this.endpoint_uri
}

output "entity_path" {
  value = azurerm_iothub_endpoint_servicebus_topic.this.entity_path
}

output "connection_string" {
  value     = azurerm_iothub_endpoint_servicebus_topic.this.connection_string
  sensitive = true
}

output "iothub_id" {
  value = azurerm_iothub_endpoint_servicebus_topic.this.iothub_id
}

output "id" {
  description = "The ID of the IoTHub ServiceBus Topic Endpoint."
  value       = azurerm_iothub_endpoint_servicebus_topic.this.id
}

