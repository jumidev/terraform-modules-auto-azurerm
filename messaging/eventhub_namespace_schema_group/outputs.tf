output "name" {
  value = azurerm_eventhub_namespace_schema_group.this.name
}

output "namespace_id" {
  value = azurerm_eventhub_namespace_schema_group.this.namespace_id
}

output "schema_compatibility" {
  value = azurerm_eventhub_namespace_schema_group.this.schema_compatibility
}

output "schema_type" {
  value = azurerm_eventhub_namespace_schema_group.this.schema_type
}

output "id" {
  description = "The ID of the EventHub Namespace Schema Group."
  value       = azurerm_eventhub_namespace_schema_group.this.id
}

