output "name" {
  value = azurerm_synapse_sql_pool_workload_group.this.name
}

output "sql_pool_id" {
  value = azurerm_synapse_sql_pool_workload_group.this.sql_pool_id
}

output "max_resource_percent" {
  value = azurerm_synapse_sql_pool_workload_group.this.max_resource_percent
}

output "min_resource_percent" {
  value = azurerm_synapse_sql_pool_workload_group.this.min_resource_percent
}

output "importance" {
  value = azurerm_synapse_sql_pool_workload_group.this.importance
}

output "max_resource_percent_per_request" {
  value = azurerm_synapse_sql_pool_workload_group.this.max_resource_percent_per_request
}

output "min_resource_percent_per_request" {
  value = azurerm_synapse_sql_pool_workload_group.this.min_resource_percent_per_request
}

output "query_execution_timeout_in_seconds" {
  value = azurerm_synapse_sql_pool_workload_group.this.query_execution_timeout_in_seconds
}

output "query_execution_timeout_in_seconds" {
  description = "The workload group query execution timeout. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_synapse_sql_pool_workload_group.this.query_execution_timeout_in_seconds
}

output "id" {
  description = "The ID of the Synapse SQL Pool Workload Group."
  value       = azurerm_synapse_sql_pool_workload_group.this.id
}

