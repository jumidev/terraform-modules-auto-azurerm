output "name" {
  value = azurerm_synapse_spark_pool.this.name
}

output "synapse_workspace_id" {
  value = azurerm_synapse_spark_pool.this.synapse_workspace_id
}

output "node_size_family" {
  value = azurerm_synapse_spark_pool.this.node_size_family
}

output "node_size" {
  value = azurerm_synapse_spark_pool.this.node_size
}

output "node_count" {
  value = azurerm_synapse_spark_pool.this.node_count
}

output "auto_scale" {
  value = azurerm_synapse_spark_pool.this.auto_scale
}

output "auto_pause" {
  value = azurerm_synapse_spark_pool.this.auto_pause
}

output "cache_size" {
  value = azurerm_synapse_spark_pool.this.cache_size
}

output "compute_isolation_enabled" {
  value = azurerm_synapse_spark_pool.this.compute_isolation_enabled
}

output "dynamic_executor_allocation_enabled" {
  value = azurerm_synapse_spark_pool.this.dynamic_executor_allocation_enabled
}

output "min_executors" {
  value = azurerm_synapse_spark_pool.this.min_executors
}

output "max_executors" {
  value = azurerm_synapse_spark_pool.this.max_executors
}

output "library_requirement" {
  value = azurerm_synapse_spark_pool.this.library_requirement
}

output "session_level_packages_enabled" {
  value = azurerm_synapse_spark_pool.this.session_level_packages_enabled
}

output "spark_config" {
  value = azurerm_synapse_spark_pool.this.spark_config
}

output "spark_log_folder" {
  value = azurerm_synapse_spark_pool.this.spark_log_folder
}

output "spark_events_folder" {
  value = azurerm_synapse_spark_pool.this.spark_events_folder
}

output "spark_version" {
  value = azurerm_synapse_spark_pool.this.spark_version
}

output "tags" {
  value = azurerm_synapse_spark_pool.this.tags
}

output "filename" {
  description = "The name of the file where the spark configuration 'content' will be stored. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_synapse_spark_pool.this.filename
}

output "id" {
  description = "The ID of the Synapse Spark Pool."
  value       = azurerm_synapse_spark_pool.this.id
}

