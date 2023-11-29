output "name" {
  value = azurerm_machine_learning_datastore_fileshare.this.name
}

output "workspace_id" {
  value = azurerm_machine_learning_datastore_fileshare.this.workspace_id
}

output "storage_fileshare_id" {
  value = azurerm_machine_learning_datastore_fileshare.this.storage_fileshare_id
}

output "account_key" {
  value     = azurerm_machine_learning_datastore_fileshare.this.account_key
  sensitive = true
}

output "shared_access_signature" {
  value = azurerm_machine_learning_datastore_fileshare.this.shared_access_signature
}

output "description" {
  value = azurerm_machine_learning_datastore_fileshare.this.description
}

output "service_data_identity" {
  value = azurerm_machine_learning_datastore_fileshare.this.service_data_identity
}

output "tags" {
  value = azurerm_machine_learning_datastore_fileshare.this.tags
}

output "id" {
  description = "The ID of the Machine Learning DataStore."
  value       = azurerm_machine_learning_datastore_fileshare.this.id
}

output "is_default" {
  description = "Indicate whether this Machines Learning DataStore is the default for the Workspace."
  value       = azurerm_machine_learning_datastore_fileshare.this.is_default
}

