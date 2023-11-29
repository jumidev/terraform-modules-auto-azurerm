output "name" {
  value = azurerm_dev_test_lab.this.name
}

output "resource_group_name" {
  value = azurerm_dev_test_lab.this.resource_group_name
}

output "location" {
  value = azurerm_dev_test_lab.this.location
}

output "storage_type" {
  value = azurerm_dev_test_lab.this.storage_type
}

output "tags" {
  value = azurerm_dev_test_lab.this.tags
}

output "id" {
  description = "The ID of the Dev Test Lab."
  value       = azurerm_dev_test_lab.this.id
}

output "artifacts_storage_account_id" {
  description = "The ID of the Storage Account used for Artifact Storage."
  value       = azurerm_dev_test_lab.this.artifacts_storage_account_id
}

output "default_storage_account_id" {
  description = "The ID of the Default Storage Account for this Dev Test Lab."
  value       = azurerm_dev_test_lab.this.default_storage_account_id
}

output "default_premium_storage_account_id" {
  description = "The ID of the Default Premium Storage Account for this Dev Test Lab."
  value       = azurerm_dev_test_lab.this.default_premium_storage_account_id
}

output "key_vault_id" {
  description = "The ID of the Key used for this Dev Test Lab."
  value       = azurerm_dev_test_lab.this.key_vault_id
}

output "premium_data_disk_storage_account_id" {
  description = "The ID of the Storage Account used for Storage of Premium Data Disk."
  value       = azurerm_dev_test_lab.this.premium_data_disk_storage_account_id
}

output "unique_identifier" {
  description = "The unique immutable identifier of the Dev Test Lab."
  value       = azurerm_dev_test_lab.this.unique_identifier
}

