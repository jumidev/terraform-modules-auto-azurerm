output "name" {
  value = azurerm_machine_learning_datastore_blobstorage.this.name
}

output "workspace_id" {
  value = azurerm_machine_learning_datastore_blobstorage.this.workspace_id
}

output "storage_container_id" {
  value = azurerm_machine_learning_datastore_blobstorage.this.storage_container_id
}

output "account_key" {
  value     = azurerm_machine_learning_datastore_blobstorage.this.account_key
  sensitive = true
}

output "shared_access_signature" {
  value = azurerm_machine_learning_datastore_blobstorage.this.shared_access_signature
}

output "description" {
  value = azurerm_machine_learning_datastore_blobstorage.this.description
}

output "is_default" {
  value = azurerm_machine_learning_datastore_blobstorage.this.is_default
}

output "service_data_auth_identity" {
  value = azurerm_machine_learning_datastore_blobstorage.this.service_data_auth_identity
}

output "tags" {
  value = azurerm_machine_learning_datastore_blobstorage.this.tags
}

output "id" {
  description = "The ID of the Machine Learning DataStore."
  value       = azurerm_machine_learning_datastore_blobstorage.this.id
}

