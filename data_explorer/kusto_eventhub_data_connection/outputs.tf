output "name" {
  value = azurerm_kusto_eventhub_data_connection.this.name
}

output "location" {
  value = azurerm_kusto_eventhub_data_connection.this.location
}

output "resource_group_name" {
  value = azurerm_kusto_eventhub_data_connection.this.resource_group_name
}

output "cluster_name" {
  value = azurerm_kusto_eventhub_data_connection.this.cluster_name
}

output "compression" {
  value = azurerm_kusto_eventhub_data_connection.this.compression
}

output "database_name" {
  value = azurerm_kusto_eventhub_data_connection.this.database_name
}

output "eventhub_id" {
  value = azurerm_kusto_eventhub_data_connection.this.eventhub_id
}

output "event_system_properties" {
  value = azurerm_kusto_eventhub_data_connection.this.event_system_properties
}

output "consumer_group" {
  value = azurerm_kusto_eventhub_data_connection.this.consumer_group
}

output "table_name" {
  value = azurerm_kusto_eventhub_data_connection.this.table_name
}

output "identity_id" {
  value = azurerm_kusto_eventhub_data_connection.this.identity_id
}

output "mapping_rule_name" {
  value = azurerm_kusto_eventhub_data_connection.this.mapping_rule_name
}

output "data_format" {
  value = azurerm_kusto_eventhub_data_connection.this.data_format
}

output "database_routing_type" {
  value = azurerm_kusto_eventhub_data_connection.this.database_routing_type
}

output "id" {
  description = "The ID of the Kusto EventHub Data Connection."
  value       = azurerm_kusto_eventhub_data_connection.this.id
}

