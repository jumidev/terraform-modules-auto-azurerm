output "name" {
  value = azurerm_machine_learning_datastore_datalake_gen2.this.name
}

output "workspace_id" {
  value = azurerm_machine_learning_datastore_datalake_gen2.this.workspace_id
}

output "storage_container_id" {
  value = azurerm_machine_learning_datastore_datalake_gen2.this.storage_container_id
}

output "tenant_id" {
  value = azurerm_machine_learning_datastore_datalake_gen2.this.tenant_id
}

output "client_id" {
  value = azurerm_machine_learning_datastore_datalake_gen2.this.client_id
}

output "client_secret" {
  value = azurerm_machine_learning_datastore_datalake_gen2.this.client_secret
}

output "authority_url" {
  value = azurerm_machine_learning_datastore_datalake_gen2.this.authority_url
}

output "description" {
  value = azurerm_machine_learning_datastore_datalake_gen2.this.description
}

output "service_data_identity" {
  value = azurerm_machine_learning_datastore_datalake_gen2.this.service_data_identity
}

output "tags" {
  value = azurerm_machine_learning_datastore_datalake_gen2.this.tags
}

output "id" {
  description = "The ID of the Machine Learning DataStore."
  value       = azurerm_machine_learning_datastore_datalake_gen2.this.id
}

output "is_default" {
  description = "Indicates whether this Machines Learning DataStore is the default for the Workspace."
  value       = azurerm_machine_learning_datastore_datalake_gen2.this.is_default
}

