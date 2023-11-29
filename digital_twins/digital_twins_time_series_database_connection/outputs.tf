output "name" {
  value = azurerm_digital_twins_time_series_database_connection.this.name
}

output "digital_twins_id" {
  value = azurerm_digital_twins_time_series_database_connection.this.digital_twins_id
}

output "eventhub_name" {
  value = azurerm_digital_twins_time_series_database_connection.this.eventhub_name
}

output "eventhub_namespace_endpoint_uri" {
  value = azurerm_digital_twins_time_series_database_connection.this.eventhub_namespace_endpoint_uri
}

output "eventhub_namespace_id" {
  value = azurerm_digital_twins_time_series_database_connection.this.eventhub_namespace_id
}

output "kusto_cluster_id" {
  value = azurerm_digital_twins_time_series_database_connection.this.kusto_cluster_id
}

output "kusto_cluster_uri" {
  value = azurerm_digital_twins_time_series_database_connection.this.kusto_cluster_uri
}

output "kusto_database_name" {
  value = azurerm_digital_twins_time_series_database_connection.this.kusto_database_name
}

output "eventhub_consumer_group_name" {
  value = azurerm_digital_twins_time_series_database_connection.this.eventhub_consumer_group_name
}

output "kusto_table_name" {
  value = azurerm_digital_twins_time_series_database_connection.this.kusto_table_name
}

output "id" {
  description = "The ID of the Digital Twins Time Series Database Connection."
  value       = azurerm_digital_twins_time_series_database_connection.this.id
}

