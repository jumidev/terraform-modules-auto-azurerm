output "name" {
  value = azurerm_synapse_sql_pool_workload_classifier.this.name
}

output "workload_group_id" {
  value = azurerm_synapse_sql_pool_workload_classifier.this.workload_group_id
}

output "member_name" {
  value = azurerm_synapse_sql_pool_workload_classifier.this.member_name
}

output "context" {
  value = azurerm_synapse_sql_pool_workload_classifier.this.context
}

output "end_time" {
  value = azurerm_synapse_sql_pool_workload_classifier.this.end_time
}

output "importance" {
  value = azurerm_synapse_sql_pool_workload_classifier.this.importance
}

output "label" {
  value = azurerm_synapse_sql_pool_workload_classifier.this.label
}

output "start_time" {
  value = azurerm_synapse_sql_pool_workload_classifier.this.start_time
}

output "start_time" {
  description = "The workload classifier start time for classification. It's of the 'HH:MM' format in UTC time zone. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_synapse_sql_pool_workload_classifier.this.start_time
}

output "id" {
  description = "The ID of the Synapse SQL Pool Workload Classifier."
  value       = azurerm_synapse_sql_pool_workload_classifier.this.id
}

