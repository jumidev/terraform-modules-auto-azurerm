output "name" {
  value = azurerm_kusto_iothub_data_connection.this.name
}

output "location" {
  value = azurerm_kusto_iothub_data_connection.this.location
}

output "resource_group_name" {
  value = azurerm_kusto_iothub_data_connection.this.resource_group_name
}

output "cluster_name" {
  value = azurerm_kusto_iothub_data_connection.this.cluster_name
}

output "database_name" {
  value = azurerm_kusto_iothub_data_connection.this.database_name
}

output "iothub_id" {
  value = azurerm_kusto_iothub_data_connection.this.iothub_id
}

output "consumer_group" {
  value = azurerm_kusto_iothub_data_connection.this.consumer_group
}

output "shared_access_policy_name" {
  value = azurerm_kusto_iothub_data_connection.this.shared_access_policy_name
}

output "event_system_properties" {
  value = azurerm_kusto_iothub_data_connection.this.event_system_properties
}

output "table_name" {
  value = azurerm_kusto_iothub_data_connection.this.table_name
}

output "mapping_rule_name" {
  value = azurerm_kusto_iothub_data_connection.this.mapping_rule_name
}

output "data_format" {
  value = azurerm_kusto_iothub_data_connection.this.data_format
}

output "database_routing_type" {
  value = azurerm_kusto_iothub_data_connection.this.database_routing_type
}

output "id" {
  description = "The ID of the Kusto IotHub Data Connection."
  value       = azurerm_kusto_iothub_data_connection.this.id
}

