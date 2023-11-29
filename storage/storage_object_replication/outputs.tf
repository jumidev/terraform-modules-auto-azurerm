output "source_storage_account_id" {
  value = azurerm_storage_object_replication.this.source_storage_account_id
}

output "destination_storage_account_id" {
  value = azurerm_storage_object_replication.this.destination_storage_account_id
}

output "rules" {
  value = azurerm_storage_object_replication.this.rules
}

output "id" {
  description = "The ID of the Storage Object Replication in the destination storage account. It's composed as format 'source_object_replication_id;destination_object_replication_id'."
  value       = azurerm_storage_object_replication.this.id
}

output "source_object_replication_id" {
  description = "The ID of the Object Replication in the source storage account."
  value       = azurerm_storage_object_replication.this.source_object_replication_id
}

output "destination_object_replication_id" {
  description = "The ID of the Object Replication in the destination storage account."
  value       = azurerm_storage_object_replication.this.destination_object_replication_id
}

