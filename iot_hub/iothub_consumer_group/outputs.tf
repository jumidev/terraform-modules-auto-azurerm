output "name" {
  value = azurerm_iothub_consumer_group.this.name
}

output "iothub_name" {
  value = azurerm_iothub_consumer_group.this.iothub_name
}

output "eventhub_endpoint_name" {
  value = azurerm_iothub_consumer_group.this.eventhub_endpoint_name
}

output "resource_group_name" {
  value = azurerm_iothub_consumer_group.this.resource_group_name
}

output "id" {
  description = "The ID of the IoTHub Consumer Group."
  value       = azurerm_iothub_consumer_group.this.id
}

