output "name" {
  value = azurerm_iothub_endpoint_eventhub.this.name
}

output "resource_group_name" {
  value = azurerm_iothub_endpoint_eventhub.this.resource_group_name
}

output "authentication_type" {
  value = azurerm_iothub_endpoint_eventhub.this.authentication_type
}

output "identity_id" {
  value = azurerm_iothub_endpoint_eventhub.this.identity_id
}

output "endpoint_uri" {
  value = azurerm_iothub_endpoint_eventhub.this.endpoint_uri
}

output "entity_path" {
  value = azurerm_iothub_endpoint_eventhub.this.entity_path
}

output "connection_string" {
  value     = azurerm_iothub_endpoint_eventhub.this.connection_string
  sensitive = true
}

output "iothub_id" {
  value = azurerm_iothub_endpoint_eventhub.this.iothub_id
}

output "id" {
  description = "The ID of the IoTHub EventHub Endpoint."
  value       = azurerm_iothub_endpoint_eventhub.this.id
}

