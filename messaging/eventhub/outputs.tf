output "name" {
  value = azurerm_eventhub.this.name
}

output "namespace_name" {
  value = azurerm_eventhub.this.namespace_name
}

output "resource_group_name" {
  value = azurerm_eventhub.this.resource_group_name
}

output "partition_count" {
  value = azurerm_eventhub.this.partition_count
}

output "message_retention" {
  value = azurerm_eventhub.this.message_retention
}

output "capture_description" {
  value = azurerm_eventhub.this.capture_description
}

output "status" {
  value = azurerm_eventhub.this.status
}

output "id" {
  description = "The ID of the EventHub."
  value       = azurerm_eventhub.this.id
}

output "partition_ids" {
  description = "The identifiers for partitions created for Event Hubs."
  value       = azurerm_eventhub.this.partition_ids
}

