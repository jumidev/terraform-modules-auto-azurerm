output "name" {
  value = azurerm_data_factory_integration_runtime_managed.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_integration_runtime_managed.this.data_factory_id
}

output "location" {
  value = azurerm_data_factory_integration_runtime_managed.this.location
}

output "node_size" {
  value = azurerm_data_factory_integration_runtime_managed.this.node_size
}

output "number_of_nodes" {
  value = azurerm_data_factory_integration_runtime_managed.this.number_of_nodes
}

output "max_parallel_executions_per_node" {
  value = azurerm_data_factory_integration_runtime_managed.this.max_parallel_executions_per_node
}

output "edition" {
  value = azurerm_data_factory_integration_runtime_managed.this.edition
}

output "license_type" {
  value = azurerm_data_factory_integration_runtime_managed.this.license_type
}

output "catalog_info" {
  value = azurerm_data_factory_integration_runtime_managed.this.catalog_info
}

output "custom_setup_script" {
  value = azurerm_data_factory_integration_runtime_managed.this.custom_setup_script
}

output "vnet_integration" {
  value = azurerm_data_factory_integration_runtime_managed.this.vnet_integration
}

output "description" {
  value = azurerm_data_factory_integration_runtime_managed.this.description
}

output "id" {
  description = "The ID of the Data Factory Integration Managed Runtime."
  value       = azurerm_data_factory_integration_runtime_managed.this.id
}

