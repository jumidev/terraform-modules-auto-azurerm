output "adb_domain" {
  value = azurerm_data_factory_linked_service_azure_databricks.this.adb_domain
}

output "data_factory_id" {
  value = azurerm_data_factory_linked_service_azure_databricks.this.data_factory_id
}

output "name" {
  value = azurerm_data_factory_linked_service_azure_databricks.this.name
}

output "access_token" {
  value = azurerm_data_factory_linked_service_azure_databricks.this.access_token
}

output "key_vault_password" {
  value = azurerm_data_factory_linked_service_azure_databricks.this.key_vault_password
}

output "msi_work_space_resource_id" {
  value = azurerm_data_factory_linked_service_azure_databricks.this.msi_work_space_resource_id
}

output "existing_cluster_id" {
  value = azurerm_data_factory_linked_service_azure_databricks.this.existing_cluster_id
}

output "instance_pool" {
  value = azurerm_data_factory_linked_service_azure_databricks.this.instance_pool
}

output "new_cluster_config" {
  value = azurerm_data_factory_linked_service_azure_databricks.this.new_cluster_config
}

output "additional_properties" {
  value = azurerm_data_factory_linked_service_azure_databricks.this.additional_properties
}

output "annotations" {
  value = azurerm_data_factory_linked_service_azure_databricks.this.annotations
}

output "description" {
  value = azurerm_data_factory_linked_service_azure_databricks.this.description
}

output "integration_runtime_name" {
  value = azurerm_data_factory_linked_service_azure_databricks.this.integration_runtime_name
}

output "parameters" {
  value = azurerm_data_factory_linked_service_azure_databricks.this.parameters
}

output "id" {
  description = "The ID of the Data Factory Linked Service."
  value       = azurerm_data_factory_linked_service_azure_databricks.this.id
}

