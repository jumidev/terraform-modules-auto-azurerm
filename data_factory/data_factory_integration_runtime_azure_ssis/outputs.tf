output "name" {
  value = azurerm_data_factory_integration_runtime_azure_ssis.this.name
}

output "data_factory_id" {
  value = azurerm_data_factory_integration_runtime_azure_ssis.this.data_factory_id
}

output "location" {
  value = azurerm_data_factory_integration_runtime_azure_ssis.this.location
}

output "node_size" {
  value = azurerm_data_factory_integration_runtime_azure_ssis.this.node_size
}

output "number_of_nodes" {
  value = azurerm_data_factory_integration_runtime_azure_ssis.this.number_of_nodes
}

output "max_parallel_executions_per_node" {
  value = azurerm_data_factory_integration_runtime_azure_ssis.this.max_parallel_executions_per_node
}

output "edition" {
  value = azurerm_data_factory_integration_runtime_azure_ssis.this.edition
}

output "license_type" {
  value = azurerm_data_factory_integration_runtime_azure_ssis.this.license_type
}

output "catalog_info" {
  value = azurerm_data_factory_integration_runtime_azure_ssis.this.catalog_info
}

output "custom_setup_script" {
  value = azurerm_data_factory_integration_runtime_azure_ssis.this.custom_setup_script
}

output "express_custom_setup" {
  value = azurerm_data_factory_integration_runtime_azure_ssis.this.express_custom_setup
}

output "express_vnet_integration" {
  value = azurerm_data_factory_integration_runtime_azure_ssis.this.express_vnet_integration
}

output "package_store" {
  value = azurerm_data_factory_integration_runtime_azure_ssis.this.package_store
}

output "proxy" {
  value = azurerm_data_factory_integration_runtime_azure_ssis.this.proxy
}

output "vnet_integration" {
  value = azurerm_data_factory_integration_runtime_azure_ssis.this.vnet_integration
}

output "description" {
  value = azurerm_data_factory_integration_runtime_azure_ssis.this.description
}

output "id" {
  description = "The ID of the Data Factory Azure-SSIS Integration Runtime."
  value       = azurerm_data_factory_integration_runtime_azure_ssis.this.id
}

