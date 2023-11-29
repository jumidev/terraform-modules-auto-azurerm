output "name" {
  value = azurerm_eventhub_consumer_group.this.name
}

output "namespace_name" {
  value = azurerm_eventhub_consumer_group.this.namespace_name
}

output "eventhub_name" {
  value = azurerm_eventhub_consumer_group.this.eventhub_name
}

output "resource_group_name" {
  value = azurerm_eventhub_consumer_group.this.resource_group_name
}

output "user_metadata" {
  value = azurerm_eventhub_consumer_group.this.user_metadata
}

output "id" {
  description = "The ID of the EventHub Consumer Group."
  value       = azurerm_eventhub_consumer_group.this.id
}

