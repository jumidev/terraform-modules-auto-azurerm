output "name" {
  value = azurerm_kusto_eventgrid_data_connection.this.name
}

output "location" {
  value = azurerm_kusto_eventgrid_data_connection.this.location
}

output "resource_group_name" {
  value = azurerm_kusto_eventgrid_data_connection.this.resource_group_name
}

output "cluster_name" {
  value = azurerm_kusto_eventgrid_data_connection.this.cluster_name
}

output "database_name" {
  value = azurerm_kusto_eventgrid_data_connection.this.database_name
}

output "storage_account_id" {
  value = azurerm_kusto_eventgrid_data_connection.this.storage_account_id
}

output "eventhub_id" {
  value = azurerm_kusto_eventgrid_data_connection.this.eventhub_id
}

output "eventhub_consumer_group_name" {
  value = azurerm_kusto_eventgrid_data_connection.this.eventhub_consumer_group_name
}

output "blob_storage_event_type" {
  value = azurerm_kusto_eventgrid_data_connection.this.blob_storage_event_type
}

output "data_format" {
  value = azurerm_kusto_eventgrid_data_connection.this.data_format
}

output "database_routing_type" {
  value = azurerm_kusto_eventgrid_data_connection.this.database_routing_type
}

output "eventgrid_resource_id" {
  value = azurerm_kusto_eventgrid_data_connection.this.eventgrid_resource_id
}

output "managed_identity_resource_id" {
  value = azurerm_kusto_eventgrid_data_connection.this.managed_identity_resource_id
}

output "mapping_rule_name" {
  value = azurerm_kusto_eventgrid_data_connection.this.mapping_rule_name
}

output "table_name" {
  value = azurerm_kusto_eventgrid_data_connection.this.table_name
}

output "skip_first_record" {
  value = azurerm_kusto_eventgrid_data_connection.this.skip_first_record
}

output "id" {
  description = "The ID of the Kusto Event Grid Data Connection."
  value       = azurerm_kusto_eventgrid_data_connection.this.id
}

