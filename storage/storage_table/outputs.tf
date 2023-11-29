output "name" {
  value = azurerm_storage_table.this.name
}

output "storage_account_name" {
  value = azurerm_storage_table.this.storage_account_name
}

output "acl" {
  value = azurerm_storage_table.this.acl
}

output "id" {
  description = "The ID of the Table within the Storage Account."
  value       = azurerm_storage_table.this.id
}

